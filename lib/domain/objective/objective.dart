// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/domain/general/organization.dart';
import 'package:auge_shared/domain/general/user.dart';
import 'package:auge_shared/domain/objective/measure.dart';
import 'package:auge_shared/domain/general/group.dart';

import 'package:auge_shared/src/util/common_utils.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/objective/objective_measure.pb.dart' as objective_measure_pb;

/// Domain model class to represent an objective
class Objective {
  static const String className = 'Objective';

  // Base
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // Transient
 // HistoryItem lastHistoryItem;

  // Specific
  static const String nameField = 'name';
  String name;

  static const String descriptionField = 'description';
  String description;

  static const String startDateField = 'startDate';
  DateTime startDate;

  static const String endDateField = 'endDate';
  DateTime endDate;

  static const String organizationField = 'organization';
  Organization organization;

  static const String groupField = 'group';
  Group group;

  static const String alignedToField = 'alignedTo';
  Objective alignedTo;

  static const String leaderField = 'leader';
  User leader;

  static const String archivedField = 'archived';
  bool archived;

  // Transients fields
  static const String alignedWithChildrenField = 'alignedWithChildren';
  List<Objective> alignedWithChildren;

  static const String measuresField = 'measures';
  List<Measure> measures;

  Objective() {
    initializeDateFormatting(Intl.defaultLocale);

   // lastHistoryItem = HistoryItem();
    alignedWithChildren = <Objective>[];
    measures = <Measure>[];
  }

  int get progress {

    double sumMeasuresProgress = 0.0;
    int countMeasuresProgress = 0;
    for (int i = 0;i < measures?.length;i++) {
      if (measures[i].endValue != null && measures[i].startValue != null) {
        if (measures[i].currentValue == null) {
          countMeasuresProgress++;
        } else {
          double endMinusStart = measures[i].endValue - measures[i].startValue;
          if (endMinusStart != 0) {
            sumMeasuresProgress = sumMeasuresProgress +
                (measures[i].currentValue - measures[i].startValue) /
                    endMinusStart;
            countMeasuresProgress++;
          }
        }
      }
    }
    return (countMeasuresProgress != 0) ? (sumMeasuresProgress / countMeasuresProgress * 100).toInt() : 0;
  }

  objective_measure_pb.Objective writeToProtoBuf() {
    objective_measure_pb.Objective objectivePb = objective_measure_pb.Objective();

    if (id != null) objectivePb.id = id;
    if (version != null) objectivePb.version = version;
    if (name != null) objectivePb.name = name;
    if (description != null) objectivePb.description = description;

    if (startDate != null)  objectivePb.startDate = CommonUtils.timestampFromDateTime(startDate);
    if (endDate != null) objectivePb.endDate = CommonUtils.timestampFromDateTime(endDate);

    if (archived != null) objectivePb.archived = archived;
    if (organization != null) objectivePb.organization = organization.writeToProtoBuf();
    if (group != null) objectivePb.group =  group.writeToProtoBuf();
    if (leader != null) objectivePb.leader = leader.writeToProtoBuf(); //this.leader.writeToProtoBuf();
    if (alignedTo != null) objectivePb.alignedTo = alignedTo.writeToProtoBuf();

    if (alignedWithChildren != null && alignedWithChildren.isNotEmpty) objectivePb.alignedWithChildren.addAll(alignedWithChildren.map((a) => a.writeToProtoBuf()));
    if (measures != null && measures.isNotEmpty) objectivePb.measures.addAll(measures.map((m) => m.writeToProtoBuf()));

    return objectivePb;
  }

  void readFromProtoBuf(objective_measure_pb.Objective objectivePb, Map<String, dynamic> cache) {
    if (objectivePb.hasId()) id = objectivePb.id;
    if (objectivePb.hasVersion()) version = objectivePb.version;
    if (objectivePb.hasName()) name = objectivePb.name;
    if (objectivePb.hasDescription()) description = objectivePb.description;
    if (objectivePb.hasArchived()) archived = objectivePb.archived;

    if (objectivePb.hasStartDate()) {
      startDate = objectivePb.startDate.toDateTime();
    }

    if (objectivePb.hasEndDate()) {
      endDate = objectivePb.endDate.toDateTime();
    }

    if (objectivePb.hasOrganization()) organization = cache.putIfAbsent('${Objective.organizationField}${objectivePb.organization.id}@${Organization.className}', () => Organization()..readFromProtoBuf(objectivePb.organization));
    if (objectivePb.hasGroup()) group = cache.putIfAbsent('${Objective.groupField}${objectivePb.group.id}@${Group.className}', () => Group()..readFromProtoBuf(objectivePb.group, cache));
    if (objectivePb.hasLeader()) leader = cache.putIfAbsent('${Objective.leaderField}${objectivePb.leader.id}@${User.className}', () => User()..readFromProtoBuf(objectivePb.leader, cache));
    if (objectivePb.hasAlignedTo()) alignedTo = cache.putIfAbsent('${Objective.alignedToField}${objectivePb.alignedTo.id}@${Objective.className}', () => Objective()..readFromProtoBuf(objectivePb.alignedTo, cache));
    if (objectivePb.alignedWithChildren.isNotEmpty) alignedWithChildren = objectivePb.alignedWithChildren.map((o) => cache.putIfAbsent('${Objective.alignedWithChildrenField}${o.id}@${Objective.className}', () => Objective()..readFromProtoBuf(o, cache))).toList().cast<Objective>();
    if (objectivePb.measures.isNotEmpty) measures = objectivePb.measures.map((u) => Measure()..readFromProtoBuf(u, cache)).toList();
  }

  static Map<String, dynamic> fromProtoBufToModelMap(objective_measure_pb.Objective objectivePb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (objectivePb.hasId()) map[Objective.idField] = objectivePb.id;
      if (objectivePb.hasName()) map[Objective.nameField] = objectivePb.name;
    } else {
      if (objectivePb.hasId()) map[Objective.idField] = objectivePb.id;
      if (objectivePb.hasVersion()) {
        map[Objective.versionField] = objectivePb.version;
      }
      if (objectivePb.hasName()) map[Objective.nameField] = objectivePb.name;
      if (objectivePb.hasDescription()) {
        map[Objective.descriptionField] = objectivePb.description;
      }
      if (objectivePb.hasArchived()) {
        map[Objective.archivedField] = objectivePb.archived;
      }
      if (objectivePb.hasStartDate()) {
        map[Objective.startDateField] = objectivePb.startDate.toDateTime();
      }
      if (objectivePb.hasEndDate()) {
        map[Objective.endDateField] = objectivePb.endDate.toDateTime();
      }

      if (objectivePb.hasOrganization()) {
        Organization
          .fromProtoBufToModelMap(objectivePb.organization, onlyIdAndSpecificationForDepthFields, true);
      }
      if (objectivePb.hasGroup()) {
        map[Objective.groupField] =
          Group.fromProtoBufToModelMap(objectivePb.group, onlyIdAndSpecificationForDepthFields, true);
      }
      if (objectivePb.hasLeader()) {
        map[Objective.leaderField] =
          User.fromProtoBufToModelMap(objectivePb.leader, onlyIdAndSpecificationForDepthFields, true);
      }
      if (objectivePb.hasAlignedTo()) {
        map[Objective.alignedToField] =
          Objective.fromProtoBufToModelMap(objectivePb.alignedTo, onlyIdAndSpecificationForDepthFields, true);
      }
      if (objectivePb.alignedWithChildren.isNotEmpty) {
        map[Objective.alignedWithChildrenField] =
          objectivePb.alignedWithChildren.map((a) => Objective.fromProtoBufToModelMap(a, onlyIdAndSpecificationForDepthFields, true))
              .toList();
      }

      if (objectivePb.measures.isNotEmpty) {
        map[Objective.measuresField] =
          objectivePb.measures.map((m) => Measure.fromProtoBufToModelMap(m, onlyIdAndSpecificationForDepthFields, true))
              .toList();
      }
    }
    return map;
  }
}