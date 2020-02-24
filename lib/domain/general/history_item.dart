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


  history_item_pb.HistoryItem writeToProtoBuf() {
    history_item_pb.HistoryItem historyItemPb = history_item_pb.HistoryItem();

    if (id != null) {
      historyItemPb.id = id;
    }
    if (objectClassName != null) {
      historyItemPb.objectClassName = objectClassName;
    }
    if (objectId != null) {
      historyItemPb.objectId = objectId;
    }
    if (objectVersion != null) {
      historyItemPb.objectVersion = objectVersion;
    }
    if (systemModuleIndex != null) {
      historyItemPb.systemModuleIndex = systemModuleIndex;
    }
    if (systemFunctionIndex != null) {
      historyItemPb.systemFunctionIndex = systemFunctionIndex;
    }

    if (dateTime != null) historyItemPb.dateTime = CommonUtils.timestampFromDateTime(dateTime);/*{
      Timestamp t = Timestamp();
      int microsecondsSinceEpoch = this.dateTime.toUtc().microsecondsSinceEpoch;
      t.seconds = Int64(microsecondsSinceEpoch ~/ 1000000);
      t.nanos = ((microsecondsSinceEpoch % 1000000) * 1000);
      historyItemPb.dateTime = t;
    }*/
    if (organization != null) historyItemPb.organization = organization.writeToProtoBuf();
    if (user != null) historyItemPb.user = user.writeToProtoBuf();
    if (description != null) historyItemPb.description = description;

    if (changedValues != null) {

      // Convert value from dart json to protobuf string
      historyItemPb.changedValuesJson = json.encode(changedValues);
    }
    return historyItemPb;
  }

  void readFromProtoBuf(history_item_pb.HistoryItem historyItemPb, Map<String, dynamic> cache) {
    if (historyItemPb.hasId()) id = historyItemPb.id;
    if (historyItemPb.hasObjectClassName()) objectClassName = historyItemPb.objectClassName;
    if (historyItemPb.hasObjectId()) objectId = historyItemPb.objectId;
    if (historyItemPb.hasObjectVersion()) objectVersion = historyItemPb.objectVersion;
    if (historyItemPb.hasSystemModuleIndex()) systemModuleIndex = historyItemPb.systemModuleIndex;
    if (historyItemPb.hasSystemFunctionIndex()) systemFunctionIndex = historyItemPb.systemFunctionIndex;

    if (historyItemPb.hasDateTime()) {
      // this.dateTime = CommonUtils.dateTimeFromTimestamp(historyItemPb.dateTime);
      dateTime = historyItemPb.dateTime.toDateTime();
    }
    if (historyItemPb.hasOrganization()) organization = cache.putIfAbsent('${HistoryItem.organizationField}${historyItemPb.organization.id}@${Organization.className}', () => Organization()..readFromProtoBuf(historyItemPb.organization));
    if (historyItemPb.hasUser()) user = cache.putIfAbsent('${HistoryItem.userField}${historyItemPb.user.id}@${User.className}', () => User()..readFromProtoBuf(historyItemPb.user, cache));
    if (historyItemPb.hasDescription()) description = historyItemPb.description;
    //if (historyItemPb.changedValues.isNotEmpty) this.changedValues = historyItemPb.changedValues;
    // Convert value from protobuf string to dart json
    if (historyItemPb.hasChangedValuesJson()) changedValues = json.decode(historyItemPb.changedValuesJson);
  }

  static const previousKey = 'p', currentKey = 'c';

  static Map<dynamic, dynamic> changedValuesMap(Map<dynamic, dynamic> previous, Map<dynamic, dynamic> current, [bool onlyDiff = true]) {

    Map<dynamic, dynamic> processPrevious(Map<dynamic, dynamic> previous) {
      //   Map<String, dynamic> mP = Map.from(map);
      Map<dynamic, dynamic> mP = {};
      previous.forEach((k, v) {
        if (v is Map) {
          mP[k] = processPrevious(v);
        } else {
          mP.putIfAbsent(k, () => {});
          mP[k][previousKey] = v;
        }
      });
      return mP;
    }

    Map<dynamic, dynamic> processCurrent(Map<dynamic, dynamic> current) {
      Map<dynamic, dynamic> mC = {};
      current.forEach((k, v) {
        if (v is Map) {
          mC[k] = processCurrent(v);
        } else {
          mC.putIfAbsent(k, () => {});
          mC[k][currentKey] = v;
        }
      });
      return mC;
    }

    Map<dynamic, dynamic> processMerge(Map<dynamic, dynamic> mapWithP, Map<dynamic, dynamic> mapWithC) {
      Map<dynamic, dynamic> mergeMap = Map.from(mapWithP ?? {});

      mapWithC.forEach((k, v) {
        if (v is Map) {
          mergeMap[k] = processMerge(mapWithP[k] ?? {}, mapWithC[k]);
        }
        mergeMap.putIfAbsent(k, () => mapWithC[k]);
      });
      return mergeMap;
    }

    Map<dynamic, dynamic> processOnlyDiffPreviousCurrent(Map<dynamic, dynamic> merge) {

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
            diffSub = processOnlyDiffPreviousCurrent(v);

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

    Map<dynamic, dynamic> withP = processPrevious(previous);
    Map<dynamic, dynamic> withC = processCurrent(current);
    Map<dynamic, dynamic> merge = processMerge(withP, withC);
    if (onlyDiff) {

      return processOnlyDiffPreviousCurrent(merge);
    }
    else {
      return merge;
    }
  }

  static String changedValuesJson(Map<dynamic, dynamic> previous, Map<dynamic, dynamic> current, [bool onlyDiff = true]) {
    return json.encode(changedValuesMap(previous, current, onlyDiff), toEncodable: changedValuesEncode);
  }

  static dynamic changedValuesEncode(dynamic item) {
    if(item is DateTime) {
      return item.toIso8601String();
    }
    return item;
  }
}