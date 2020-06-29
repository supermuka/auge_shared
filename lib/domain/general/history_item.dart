/// HistoryItem is just created (inserted) like a log.
/// It does not have version field, necessary to concurrency control

import 'dart:convert';
import 'package:auge_shared/src/util/common_utils.dart';
import 'package:collection/collection.dart';

import 'package:auge_shared/domain/general/organization.dart';
import 'package:auge_shared/domain/general/user.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/general/history_item.pb.dart' as history_item_pb;

class HistoryItem {
  static const String className = 'HistoryItem';

  static const String idField = 'id';
  String id;
  static const String organizationField = 'organization';
  Organization organization;
  static const String userField = 'user';
  User user;
  static const String objectClassNameField = 'objectClassName';
  String objectClassName;
  static const String objectIdField = 'objectId';
  String objectId;
  static const String objectVersionField = 'objectVersion';
  int objectVersion;
  static const String systemModuleIndexField = 'systemModuleIndex';
  int systemModuleIndex;
  static const String systemFunctionIndexField = 'systemFunctionIndex';
  int systemFunctionIndex;
  static const String dateTimeField = 'dateTime';
  DateTime dateTime;

  // This fields are setting on client
  static const String descriptionField = 'description';
  String description;

  // values are dynamic, contents json
  static const String changedValuesField = 'changedValues';
  Map<String, dynamic> changedValues;  // previousValuesChanged;

}

class HistoryItemHelper {

  static history_item_pb.HistoryItem writeToProtoBuf(HistoryItem historyItem) {
    history_item_pb.HistoryItem historyItemPb = history_item_pb.HistoryItem();

    if (historyItem.id != null) {
      historyItemPb.id = historyItem.id;
    }
    if (historyItem.objectClassName != null) {
      historyItemPb.objectClassName = historyItem.objectClassName;
    }
    if (historyItem.objectId != null) {
      historyItemPb.objectId = historyItem.objectId;
    }
    if (historyItem.objectVersion != null) {
      historyItemPb.objectVersion = historyItem.objectVersion;
    }
    if (historyItem.systemModuleIndex != null) {
      historyItemPb.systemModuleIndex = historyItem.systemModuleIndex;
    }
    if (historyItem.systemFunctionIndex != null) {
      historyItemPb.systemFunctionIndex = historyItem.systemFunctionIndex;
    }

    if (historyItem.dateTime != null) historyItemPb.dateTime = CommonUtils.timestampFromDateTime(historyItem.dateTime);
    if (historyItem.organization != null) historyItemPb.organization = OrganizationHelper.writeToProtoBuf(historyItem.organization);
    if (historyItem.user != null) historyItemPb.user = UserHelper.writeToProtoBuf(historyItem.user);
    if (historyItem.description != null) historyItemPb.description = historyItem.description;

    if (historyItem.changedValues != null) {

      // Convert value from dart json to protobuf string
      historyItemPb.changedValues = json.encode(historyItem.changedValues);
    }
    return historyItemPb;
  }

  static HistoryItem readFromProtoBuf(history_item_pb.HistoryItem historyItemPb, Map<String, dynamic> cache) {
    HistoryItem historyItem = HistoryItem();
    if (historyItemPb.hasId()) historyItem.id = historyItemPb.id;
    if (historyItemPb.hasObjectClassName()) historyItem.objectClassName = historyItemPb.objectClassName;
    if (historyItemPb.hasObjectId()) historyItem.objectId = historyItemPb.objectId;
    if (historyItemPb.hasObjectVersion()) historyItem.objectVersion = historyItemPb.objectVersion;
    if (historyItemPb.hasSystemModuleIndex()) historyItem.systemModuleIndex = historyItemPb.systemModuleIndex;
    if (historyItemPb.hasSystemFunctionIndex()) historyItem.systemFunctionIndex = historyItemPb.systemFunctionIndex;

    if (historyItemPb.hasDateTime()) {
      historyItem.dateTime = historyItemPb.dateTime.toDateTime();
    }
    if (historyItemPb.hasOrganization()) historyItem.organization = cache.putIfAbsent('${HistoryItem.organizationField}${historyItemPb.organization.id}@${Organization.className}', () => OrganizationHelper.readFromProtoBuf(historyItemPb.organization));
    if (historyItemPb.hasUser()) historyItem.user = cache.putIfAbsent('${HistoryItem.userField}${historyItemPb.user.id}@${User.className}', () => UserHelper.readFromProtoBuf(historyItemPb.user, cache));
    if (historyItemPb.hasDescription()) historyItem.description = historyItemPb.description;
    //if (historyItemPb.changedValues.isNotEmpty) this.changedValues = historyItemPb.changedValues;
    // Convert value from protobuf string to dart json
    if (historyItemPb.hasChangedValues()) historyItem.changedValues = json.decode(historyItemPb.changedValues);
    return historyItem;
  }

  static const previousKey = 'p', currentKey = 'c';

  static Map<dynamic, dynamic> changedValuesMap(Map<dynamic, dynamic> previous, Map<dynamic, dynamic> current, {bool onlyDiff = true}) {

    Map<dynamic, dynamic> _processPrevious(Map<dynamic, dynamic> previous) {
      //   Map<String, dynamic> mP = Map.from(map);
      Map<dynamic, dynamic> mP = {};

      previous.forEach((k, v) {
        if (v is Map) {
          mP[k] = _processPrevious(v);
        } else {
          mP.putIfAbsent(k, () => {});
          mP[k][previousKey] = v;
        }
      });
      return mP;
    }

    Map<dynamic, dynamic> _processCurrent(Map<dynamic, dynamic> current) {
      Map<dynamic, dynamic> mC = {};
      current.forEach((k, v) {
        if (v is Map) {
          mC[k] = _processCurrent(v);
        } else {
          mC.putIfAbsent(k, () => {});
          mC[k][currentKey] = v;
        }
      });
      return mC;
    }

    Map<dynamic, dynamic> _processMerge(Map<dynamic, dynamic> mapWithP, Map<dynamic, dynamic> mapWithC) {
      Map<dynamic, dynamic> mergeMap = Map.from(mapWithP ?? {});

      mapWithC.forEach((k, v) {
        if (v is Map) {
          mergeMap[k] = _processMerge(mapWithP[k] ?? {}, mapWithC[k]);
        }
        mergeMap.putIfAbsent(k, () => mapWithC[k]);
      });
      return mergeMap;
    }

    Map<dynamic, dynamic> _processOnlyDiffPreviousCurrent(Map<dynamic, dynamic> merge) {

      Map<dynamic, dynamic> diff = Map.from(merge);

      Map<dynamic, dynamic> diffSub;
      merge.forEach((k,v) {
        if (v is Map) {
          if (v.isEmpty) {
            diff.remove(k);
          } else if (v.containsKey(previousKey) || v.containsKey(currentKey)) {
            if (v[previousKey] is List && v[currentKey] is List) {
              if (DeepCollectionEquality().equals(
                  v[previousKey], v[currentKey])) {
                diff.remove(k);
              }
            } else if (v[previousKey] == v[currentKey]) {
              diff.remove(k);
            }
          } else {
            diffSub = _processOnlyDiffPreviousCurrent(v);

            if (diffSub.isEmpty) {
              diff.remove(k);
            } else {
              diff[k] = diffSub;
            }
            //diff[k] = processOnlyDiffPreviousCurrent(v);
          }
        }
      });

      return diff;

    }

    Map<dynamic, dynamic> withP = _processPrevious(previous);
    Map<dynamic, dynamic> withC = _processCurrent(current);
    Map<dynamic, dynamic> merge = _processMerge(withP, withC);
    if (onlyDiff) {

      return _processOnlyDiffPreviousCurrent(merge);
    }
    else {
      return merge;
    }
  }

  static String changedValuesJson(Map<dynamic, dynamic> previous, Map<dynamic, dynamic> current, {bool onlyDiff = true}) {
    return json.encode(changedValuesMap(previous, current, onlyDiff: onlyDiff), toEncodable: changedValuesEncode);
  }

  static dynamic changedValuesEncode(dynamic item) {
    if(item is DateTime) {
      return item.toIso8601String();
    }
    return item;
  }
}