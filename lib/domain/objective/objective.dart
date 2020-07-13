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

/*
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
        map[Objective.organizationField] =
        Organization
          .fromProtoBufToModelMap(objectivePb.organization, onlyIdAndSpecificationForDepthFields, true);
      }
      if (objectivePb.hasGroup()) {
        map[Objective.groupField] =
            GroupHelper.fromProtoBufToModelMap(objectivePb.group, onlyIdAndSpecificationForDepthFields, true);
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
 */
}

class ObjectiveHelper {

  static objective_measure_pb.Objective writeToProtoBuf(Objective objective) {
    objective_measure_pb.Objective objectivePb = objective_measure_pb.Objective();

    if (objective.id != null) objectivePb.id = objective.id;
    if (objective.name != null) objectivePb.name = objective.name;

    if (objective.version != null) objectivePb.version = objective.version;
    if (objective.description != null)
      objectivePb.description = objective.description;

    if (objective.startDate != null) objectivePb.startDate =
        CommonUtils.timestampFromDateTime(objective.startDate);
    if (objective.endDate != null) objectivePb.endDate =
        CommonUtils.timestampFromDateTime(objective.endDate);

    if (objective.archived != null) objectivePb.archived = objective.archived;
    if (objective.organization != null) objectivePb.organization =
        OrganizationHelper.writeToProtoBuf(objective.organization);
    if (objective.group != null)
      objectivePb.group = GroupHelper.writeToProtoBuf(objective.group);
    if (objective.leader != null) objectivePb.leader =
        UserHelper.writeToProtoBuf(
            objective.leader, clearUserProfileImage: true); //this.leader.writeToProtoBuf();
    if (objective.alignedTo != null) objectivePb.alignedTo =
        ObjectiveHelper.writeToProtoBuf(objective.alignedTo);

    if (objective.alignedWithChildren != null &&
        objective.alignedWithChildren.isNotEmpty) objectivePb
        .alignedWithChildren.addAll(objective.alignedWithChildren.map((a) =>
        ObjectiveHelper.writeToProtoBuf(a)));
    if (objective.measures != null &&
        objective.measures.isNotEmpty) objectivePb.measures.addAll(
        objective.measures.map((m) => MeasureHelper.writeToProtoBuf(m)));

    return objectivePb;
  }

  static Objective readFromProtoBuf(objective_measure_pb.Objective objectivePb, Map<String, dynamic> cache) {
    Objective objective = Objective();

    if (objectivePb.hasId()) objective.id = objectivePb.id;
    if (objectivePb.hasVersion()) objective.version = objectivePb.version;
    if (objectivePb.hasName()) objective.name = objectivePb.name;
    if (objectivePb.hasDescription()) objective.description = objectivePb.description;
    if (objectivePb.hasArchived()) objective.archived = objectivePb.archived;

    if (objectivePb.hasStartDate()) {
    objective.startDate = objectivePb.startDate.toDateTime();
    }

    if (objectivePb.hasEndDate()) {
    objective.endDate = objectivePb.endDate.toDateTime();
    }

    if (objectivePb.hasOrganization()) objective.organization = cache.putIfAbsent('${Objective.organizationField}${objectivePb.organization.id}@${Organization.className}', () => OrganizationHelper.readFromProtoBuf(objectivePb.organization));
    if (objectivePb.hasGroup()) objective.group = cache.putIfAbsent('${Objective.groupField}${objectivePb.group.id}@${Group.className}', () => GroupHelper.readFromProtoBuf(objectivePb.group, cache));
    if (objectivePb.hasLeader()) objective.leader = cache.putIfAbsent('${Objective.leaderField}${objectivePb.leader.id}@${User.className}', () => UserHelper.readFromProtoBuf(objectivePb.leader, cache));
    if (objectivePb.hasAlignedTo()) objective.alignedTo = cache.putIfAbsent('${Objective.alignedToField}${objectivePb.alignedTo.id}@${Objective.className}', () => ObjectiveHelper.readFromProtoBuf(objectivePb.alignedTo, cache));
    if (objectivePb.alignedWithChildren.isNotEmpty) objective.alignedWithChildren = objectivePb.alignedWithChildren.map((o) => cache.putIfAbsent('${Objective.alignedWithChildrenField}${o.id}@${Objective.className}', () => ObjectiveHelper.readFromProtoBuf(o, cache))).toList().cast<Objective>();
    if (objectivePb.measures.isNotEmpty) objective.measures = objectivePb.measures.map((u) => MeasureHelper.readFromProtoBuf(u, cache)).toList();
    return objective;
  }
}