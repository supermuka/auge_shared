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

  work_work_item_pb.WorkStage writeToProtoBuf() {
    work_work_item_pb.WorkStage workStagePb = work_work_item_pb.WorkStage();

    if (id != null) workStagePb.id = id;
    if (version != null) workStagePb.version = version;
    if (name != null) workStagePb.name = name;
    if (index != null) workStagePb.index = index;

    if (state != null) workStagePb.stateIndex = state.index;
    if (work != null) workStagePb.work = work.writeToProtoBuf();


    return workStagePb;
  }

  void readFromProtoBuf(work_work_item_pb.WorkStage workStagePb, Map<String, dynamic> cache) {
    if (workStagePb.hasId()) id = workStagePb.id;
    if (workStagePb.hasVersion()) version = workStagePb.version;
    if (workStagePb.hasName()) name = workStagePb.name;
    if (workStagePb.hasIndex()) index = workStagePb.index;
    if (workStagePb.hasStateIndex()) state = State.values[workStagePb.stateIndex];
    if (workStagePb.hasWork()) work = Work()..readFromProtoBuf(workStagePb.work, cache);
  }

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
}