// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/domain/work/work.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/work/work_work_item.pb.dart' as work_work_item_pb;

enum State {notStarted, inProgress, completed}

/// Domain model class to represent an work stage (activies, bucket or swimlanes)
class WorkStage {
  static const String className = 'WorkStage';

  // Base
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // Specific
  static const String nameField = 'name';
  String name;
  static const String stateField = 'state';
  State state;

  // Define work state order
  static const String indexField = 'index';
  int index;

  static const String workField = 'work';
  Work work;

  WorkStage();



  /*
  static Map<String, dynamic> fromProtoBufToModelMap(work_work_item_pb.WorkStage workStagePb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (workStagePb.hasId()) map[WorkStage.idField] = workStagePb.id;
      if (workStagePb.hasName()) map[WorkStage.nameField] = workStagePb.name;
    } else {
      if (workStagePb.hasId()) map[WorkStage.idField] = workStagePb.id;
      if (workStagePb.hasVersion()) map[WorkStage.versionField] = workStagePb.version;
      if (workStagePb.hasName()) map[WorkStage.nameField] = workStagePb.name;
      if (workStagePb.hasIndex()) map[WorkStage.indexField] = workStagePb.index;
      if (workStagePb.hasStateIndex()) map[WorkStage.stateField] = workStagePb.stateIndex;
      if (workStagePb.hasWork()) map[WorkStage.workField] = Work.fromProtoBufToModelMap(workStagePb.work);
    }
    return map;
  }
   */
}

class WorkStageHelper {

  static work_work_item_pb.WorkStage writeToProtoBuf(WorkStage workStage) {
    work_work_item_pb.WorkStage workStagePb = work_work_item_pb.WorkStage();

    if (workStage.id != null) workStagePb.id = workStage.id;
    if (workStage.version != null) workStagePb.version = workStage.version;
    if (workStage.name != null) workStagePb.name = workStage.name;
    if (workStage.index != null) workStagePb.index = workStage.index;

    if (workStage.state != null) workStagePb.stateIndex = workStage.state.index;
    if (workStage.work != null) workStagePb.work = WorkHelper.writeToProtoBuf(workStage.work);


    return workStagePb;
  }

  static WorkStage readFromProtoBuf(work_work_item_pb.WorkStage workStagePb, Map<String, dynamic> cache) {
    WorkStage workStage = WorkStage();

    if (workStagePb.hasId()) workStage.id = workStagePb.id;
    if (workStagePb.hasVersion()) workStage.version = workStagePb.version;
    if (workStagePb.hasName()) workStage.name = workStagePb.name;
    if (workStagePb.hasIndex()) workStage.index = workStagePb.index;
    if (workStagePb.hasStateIndex()) workStage.state = State.values[workStagePb.stateIndex];
    if (workStagePb.hasWork()) workStage.work = WorkHelper.readFromProtoBuf(workStagePb.work, cache);

    return workStage;
  }

}