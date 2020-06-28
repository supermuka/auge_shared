// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel
import 'dart:collection';

import 'package:auge_shared/domain/general/organization.dart';
import 'package:auge_shared/domain/general/user.dart';
import 'package:auge_shared/domain/work/work_stage.dart';
import 'package:auge_shared/domain/work/work_item.dart';
import 'package:auge_shared/domain/general/group.dart';

import 'package:auge_shared/domain/objective/objective.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/work/work_work_item.pb.dart' as work_work_item_pb;

/// Domain model class to represent w work (action plan, projects)
class Work  {
  static const String className = 'Work';

  // Base
  static const String idField = 'id';
  String id;

  static const String versionField = 'version';
  int version;

  // Specific
  static const String nameField = 'name';
  String name;
  static const String descriptionField = 'description';
  String description;
  static const String archivedField = 'archived';
  bool archived;
  static const String workStagesField = 'workStages';
  List<WorkStage> workStages;
  static const String objectiveField = 'objective';
  Objective objective;
  static const String organizationField = 'organization';
  Organization organization;
  static const String groupField = 'group';
  Group group;
  static const String leaderField = 'leader';
  User leader;


  // Transient fields
  static const String workItemsField = 'workItems';
  List<WorkItem> workItems;

  Work() {
    workStages = <WorkStage>[];
    workItems = <WorkItem>[];
  }

  Map<State, int> get stateWorkItemsCount {
    Map<State, int> m = {};
   // Map<int, State> mSameState = SplayTreeMap(); // new Map();
    // Two item on list. First is the state object and the last the count number of workitems
    Map<int, List<dynamic>> mSameState = SplayTreeMap();
    List<dynamic> state;
    workItems.forEach( (key) {
      // Get a same object for all State objects with identical index. Used index as a key to sort
      state =  mSameState.putIfAbsent(key.workStage.state.index, () => [key.workStage.state, 0]);

      //
      state[1]++;

   //   m.putIfAbsent(state , () => 0);
   //   m.update(state, (i) => i + 1);
    });

    mSameState.forEach((k, v) => m.putIfAbsent(v.first, () => v.last));

    return m;

     //return m;
  }

  Map<WorkStage, int> get stageWorkItemsCount  {
    Map<WorkStage, int> m = {};
    Map<String, WorkStage> mSameStage =  {};
    WorkStage stage;
    workItems.forEach( (key) {
      // Get a same object for all State objects with identical id
      stage =  mSameStage.putIfAbsent(key.workStage.id, () => key.workStage);

      m.putIfAbsent(stage, () => 0);
      m.update(stage, (i) => i + 1);
    });
    return m;
  }

  int get workItemsCount   {
    return workItems.length;
  }

  int get workItemsOverDueCount  {
    int n = 0;
    workItems.forEach((i) => i.isOverdue ? ++n : null);
    return n;
  }

  /*
  static Map<String, dynamic> fromProtoBufToModelMap(work_work_item_pb.Work workPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (workPb.hasId()) map[Work.idField] = workPb.id;
      if (workPb.hasName()) map[Work.nameField] = workPb.name;
    } else {
      if (workPb.hasId()) map[Work.idField] = workPb.id;
      if (workPb.hasVersion()) {
        map[Work.versionField] = workPb.version;
      }
      if (workPb.hasName()) map[Work.nameField] = workPb.name;
      if (workPb.hasDescription()) {
        map[Work.descriptionField] = workPb.description;
      }
      if (workPb.hasArchived()) {
        map[Work.archivedField] = workPb.archived;
      }
      if (workPb.hasObjective()) {
        map[Work.objectiveField] =
          Objective.fromProtoBufToModelMap(workPb.objective, onlyIdAndSpecificationForDepthFields, true);
      }
      if (workPb.hasGroup()) {
        map[Work.groupField] =
          GroupHelper.fromProtoBufToModelMap(workPb.group, onlyIdAndSpecificationForDepthFields, true);
      }
      if (workPb.hasOrganization()) {
        map[Work.organizationField] =
          Organization.fromProtoBufToModelMap(workPb.organization, onlyIdAndSpecificationForDepthFields, true);
      }
      if (workPb.hasLeader()) {
        map[Work.leaderField] =
          User.fromProtoBufToModelMap(workPb.leader, onlyIdAndSpecificationForDepthFields, true);
      }
      if (workPb.workItems.isNotEmpty) {
        map[Work.workItemsField] =
          workPb.workItems.map((wi) =>
              WorkItem.fromProtoBufToModelMap(wi, onlyIdAndSpecificationForDepthFields, true)).toList();
      }
      if (workPb.workStages.isNotEmpty) {
        map[Work.workStagesField] =
          workPb.workStages.map((s) => WorkStage.fromProtoBufToModelMap(s, onlyIdAndSpecificationForDepthFields, true))
              .toList();
      }
    }
    return map;
  }

   */
}

class WorkHelper {

  static work_work_item_pb.Work writeToProtoBuf(Work work) {
    work_work_item_pb.Work workPb = work_work_item_pb.Work();

    if (work.id != null) workPb.id = work.id;
    if (work.version != null) workPb.version = work.version;
    if (work.name != null) workPb.name = work.name;
    if (work.description != null) workPb.description = work.description;
    if (work.archived != null) workPb.archived = work.archived;

    if (work.objective != null) workPb.objective = ObjectiveHelper.writeToProtoBuf(work.objective);
    if (work.group != null) workPb.group = GroupHelper.writeToProtoBuf(work.group);
    if (work.organization != null) workPb.organization = OrganizationHelper.writeToProtoBuf(work.organization);
    if (work.leader != null) workPb.leader = UserHelper.writeToProtoBuf(work.leader);
    if (work.workItems != null && work.workItems.isNotEmpty) workPb.workItems.addAll(work.workItems.map((m) => WorkItemHelper.writeToProtoBuf(m)));
    if (work.workStages != null && work.workStages.isNotEmpty) workPb.workStages.addAll(work.workStages.map((m) => WorkStageHelper.writeToProtoBuf(m)));

    return workPb;
  }

  static Work readFromProtoBuf(work_work_item_pb.Work workPb, Map<String, dynamic> cache) {
    Work work = Work();

    if (workPb.hasId()) work.id = workPb.id;
    if (workPb.hasVersion()) work.version = workPb.version;
    if (workPb.hasName()) work.name = workPb.name;
    if (workPb.hasDescription()) work.description = workPb.description;
    if (workPb.hasArchived()) work.archived = workPb.archived;
    if (workPb.hasObjective()) work.objective = cache.putIfAbsent('${Work.objectiveField}${workPb.objective.id}@${Objective.className}', () =>  ObjectiveHelper.readFromProtoBuf(workPb.objective, cache));
    if (workPb.hasGroup()) work.group = cache.putIfAbsent('${Work.groupField}${workPb.group.id}@${Group.className}', () => GroupHelper.readFromProtoBuf(workPb.group, cache));
    if (workPb.hasOrganization()) work.organization = cache.putIfAbsent('${Work.organizationField}${workPb.organization.id}@${Organization.className}', () => OrganizationHelper.readFromProtoBuf(workPb.organization));
    if (workPb.hasLeader()) work.leader = cache.putIfAbsent('${Work.leaderField}${workPb.leader.id}@${User.className}', () => UserHelper.readFromProtoBuf(workPb.leader, cache));
    if (workPb.workItems.isNotEmpty) work.workItems = workPb.workItems.map((u) => WorkItemHelper.readFromProtoBuf(u, cache)).toList(); // Not need the cache, if a composite.
    if (workPb.workStages.isNotEmpty) work.workStages = workPb.workStages.map((u) => WorkStageHelper.readFromProtoBuf(u, cache)).toList();  // Not need the cache, if a composite.

    return work;
  }

}