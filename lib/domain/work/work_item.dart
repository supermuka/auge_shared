// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/src/util/common_utils.dart';

import 'package:auge_shared/domain/work/work.dart';
import 'package:auge_shared/domain/work/work_stage.dart';
import 'package:auge_shared/domain/general/user.dart';
import 'package:auge_shared/domain/general/unit_of_measurement.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/work/work_work_item.pb.dart' as work_work_item_pb;

/// Domain model class to represent an work item work (task, issue, feature, etc.)
class WorkItem {
  static const String className = 'WorkItem';

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
  static const String dueDateField = 'dueDate';
  DateTime dueDate;
  //static const String completedField = 'completed';
  //int completed;
  static const String checkItemsField = 'checkItems';
  List<WorkItemCheckItem> checkItems;
  static const String workStageField = 'workStage';
  WorkStage workStage;
  static const String assignedToField = 'assignedTo';
  List<User> assignedTo;
  static const String attachmentsField = 'attachments';
  List<WorkItemAttachment> attachments;
  static const String workField = 'work';
  Work work;
  static const String plannedValueField = 'plannedValue';
  double plannedValue;
  static const String actualValueField = 'actualValue';
  double actualValue;
  static const String unitOfMeasurementField = 'unitOfMeasurement';
  UnitOfMeasurement unitOfMeasurement;
  static const String archivedField = 'archived';
  bool archived;

  WorkItem() {
    initializeDateFormatting(Intl.defaultLocale);
    assignedTo = <User>[];
    checkItems = <WorkItemCheckItem>[];
    attachments = <WorkItemAttachment>[];
  }

  bool get isOverdue {
    if (dueDate != null) {
      DateFormat formater = DateFormat('yMd');
      return ( formater.format(dueDate).compareTo(formater.format(DateTime.now())) < 0 );
    } else {
      return false;
    }
  }

  work_work_item_pb.WorkItem writeToProtoBuf() {
    work_work_item_pb.WorkItem workItemPb = work_work_item_pb.WorkItem();

    if (id != null) workItemPb.id = id;
    if (version != null) workItemPb.version = version;
    if (name != null) workItemPb.name = name;
    if (description != null) workItemPb.description = description;
    ///if (completed != null) workItemPb.completed = completed;

    if (plannedValue != null) workItemPb.plannedValue = plannedValue;
    if (actualValue != null) workItemPb.actualValue = actualValue;
    if (unitOfMeasurement != null) workItemPb.unitOfMeasurement = unitOfMeasurement.writeToProtoBuf();
    if (archived != null) workItemPb.archived = archived;

    if (dueDate != null) workItemPb.dueDate = CommonUtils.timestampFromDateTime(dueDate); /*{
      Timestamp t = Timestamp();
      int microsecondsSinceEpoch = this.dueDate.toUtc().microsecondsSinceEpoch;
      t.seconds = Int64(microsecondsSinceEpoch ~/ 1000000);
      t.nanos = ((microsecondsSinceEpoch % 1000000) * 1000);
      workItemPb.dueDate = t;
    }
    */

    if (workStage != null) workItemPb.workStage = workStage.writeToProtoBuf();
    if (attachments != null && attachments.isNotEmpty) workItemPb.attachments.addAll(attachments.map((m) => m.writeToProtoBuf()));
    if (checkItems != null && checkItems.isNotEmpty) workItemPb.checkItems.addAll(checkItems.map((m) => m.writeToProtoBuf()));
    if (assignedTo != null && assignedTo.isNotEmpty) workItemPb.assignedTo.addAll(assignedTo.map((m) => m.writeToProtoBuf()));
    if (work != null) workItemPb.work = work.writeToProtoBuf();
    return workItemPb;
  }

  void readFromProtoBuf(work_work_item_pb.WorkItem workItemPb, Map<String, dynamic> cache) {
    if (workItemPb.hasId()) id = workItemPb.id;
    if (workItemPb.hasVersion()) version = workItemPb.version;
    if (workItemPb.hasName()) name = workItemPb.name;
    if (workItemPb.hasDescription()) description = workItemPb.description;
    //if (workItemPb.hasCompleted()) completed = workItemPb.completed;
    if (workItemPb.hasPlannedValue()) plannedValue = workItemPb.plannedValue;
    if (workItemPb.hasActualValue()) actualValue = workItemPb.actualValue;
    if (workItemPb.hasUnitOfMeasurement()) unitOfMeasurement = cache.putIfAbsent('${WorkItem.unitOfMeasurementField}${workItemPb.unitOfMeasurement.id}@${UnitOfMeasurement.className}', () => UnitOfMeasurement()..readFromProtoBuf(workItemPb.unitOfMeasurement));

    if (workItemPb.hasArchived()) archived = workItemPb.archived;

    if (workItemPb.hasWorkStage()) workStage = WorkStage()..readFromProtoBuf(workItemPb.workStage, cache);

    // if (workItemPb.hasDueDate())  this.dueDate = CommonUtils.dateTimeFromTimestamp(workItemPb.dueDate);
    if (workItemPb.hasDueDate())  dueDate = workItemPb.dueDate.toDateTime();
    /*{
      this.dueDate = DateTime.fromMicrosecondsSinceEpoch(workItemPb.dueDate.seconds.toInt() * 1000000 + workItemPb.dueDate.nanos ~/ 1000 );
    }*/
    if (workItemPb.attachments.isNotEmpty) attachments = workItemPb.attachments.map((u) => WorkItemAttachment()..readFromProtoBuf(u)).toList(); // No need cache, it is a composite
    if (workItemPb.checkItems.isNotEmpty) checkItems = workItemPb.checkItems.map((c) => WorkItemCheckItem()..readFromProtoBuf(c)).toList(); // No need cache, it is a composite
    if (workItemPb.assignedTo.isNotEmpty) assignedTo = workItemPb.assignedTo.map((u) => cache.putIfAbsent('${WorkItem.assignedToField}${u.id}@${User.className}', () => User()..readFromProtoBuf(u, cache))).toList().cast<User>();
    if (workItemPb.hasWork()) work = cache.putIfAbsent('${WorkItem.workField}${workItemPb.work.id}@${Work.className}', () => Work()..readFromProtoBuf(workItemPb.work, cache));
  }

  static Map<String, dynamic> fromProtoBufToModelMap(work_work_item_pb.WorkItem workItemPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (workItemPb.hasId()) map[WorkItem.idField] = workItemPb.id;
      if (workItemPb.hasName()) map[WorkItem.nameField] = workItemPb.name;
    } else {
      if (workItemPb.hasId()) map[WorkItem.idField] = workItemPb.id;
      if (workItemPb.hasVersion()) {
        map[WorkItem.versionField] = workItemPb.version;
      }
      if (workItemPb.hasName()) map[WorkItem.nameField] = workItemPb.name;
      if (workItemPb.hasDescription()) {
        map[WorkItem.descriptionField] = workItemPb.description;
      }
      /*
      if (workItemPb.hasCompleted()) {
        map[WorkItem.completedField] = workItemPb.completed;
      }
*/
      if (workItemPb.hasPlannedValue()) {
        map[WorkItem.plannedValueField] = workItemPb.plannedValue;
      }
      if (workItemPb.hasActualValue()) {
        map[WorkItem.actualValueField] = workItemPb.actualValue;
      }
      if (workItemPb.hasUnitOfMeasurement()) {
        map[WorkItem.unitOfMeasurementField] = UnitOfMeasurement.fromProtoBufToModelMap(
            workItemPb.unitOfMeasurement, onlyIdAndSpecificationForDepthFields, true);
      }
      if (workItemPb.hasArchived()) {
        map[WorkItem.archivedField] = workItemPb.archived;
      }
      if (workItemPb.hasWorkStage()) map[WorkItem.workStageField] = WorkStage.fromProtoBufToModelMap(workItemPb.workStage);
      /*
      if (workItemPb.hasDueDate())
        map[WorkItem.dueDateField] = CommonUtils.dateTimeFromTimestamp(workItemPb.dueDate);
*/
      if (workItemPb.hasDueDate()) {
        map[WorkItem.dueDateField] = workItemPb.dueDate.toDateTime();
      }

      if (workItemPb.attachments.isNotEmpty) {
        map[WorkItem.attachmentsField] =
          workItemPb.attachments.map((ci) =>
              WorkItemAttachment.fromProtoBufToModelMap(ci, onlyIdAndSpecificationForDepthFields, true)).toList();
      }
      if (workItemPb.checkItems.isNotEmpty) {
        map[WorkItem.checkItemsField] =
          workItemPb.checkItems.map((ci) =>
              WorkItemCheckItem.fromProtoBufToModelMap(ci, onlyIdAndSpecificationForDepthFields, true)).toList();
      }
      if (workItemPb.assignedTo.isNotEmpty) {
        map[WorkItem.assignedToField] =
          workItemPb.assignedTo.map((at) =>
              User.fromProtoBufToModelMap(at, onlyIdAndSpecificationForDepthFields, true)).toList();
      }
      if (workItemPb.hasWork()) map[WorkItem.workField] = Work.fromProtoBufToModelMap(workItemPb.work);
    }
    return map;
  }
}

class WorkItemAttachment {
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;
  static const String nameField = 'name';
  String name;
  static const String typeField = 'type';
  String type;
  static const String contentField = 'content';
  String content; // base64

  work_work_item_pb.WorkItemAttachment writeToProtoBuf() {
    work_work_item_pb.WorkItemAttachment workItemAttachmentPb = work_work_item_pb.WorkItemAttachment();

    if (id != null) workItemAttachmentPb.id = id;
    if (name != null) workItemAttachmentPb.name = name;
    if (type != null) workItemAttachmentPb.type = type;
    if (content != null) workItemAttachmentPb.content = content;

    return workItemAttachmentPb;
  }

  void readFromProtoBuf(work_work_item_pb.WorkItemAttachment workItemAttachmentPb) {
    if (workItemAttachmentPb.hasId()) id = workItemAttachmentPb.id;
    if (workItemAttachmentPb.hasName()) name = workItemAttachmentPb.name;
    if (workItemAttachmentPb.hasType()) type = workItemAttachmentPb.type;
    if (workItemAttachmentPb.hasContent()) content = workItemAttachmentPb.content;
  }

  static Map<String, dynamic> fromProtoBufToModelMap(work_work_item_pb.WorkItemAttachment workItemAttachmentPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (workItemAttachmentPb.hasId()) {
        map[WorkItemAttachment.idField] = workItemAttachmentPb.id;
      }
      if (workItemAttachmentPb.hasName()) {
        map[WorkItemAttachment.nameField] = workItemAttachmentPb.name;
      }
    } else {
      if (workItemAttachmentPb.hasId()) {
        map[WorkItemAttachment.idField] = workItemAttachmentPb.id;
      }
      if (workItemAttachmentPb.hasName()) {
        map[WorkItemAttachment.nameField] = workItemAttachmentPb.name;
      }
      if (workItemAttachmentPb.hasType()) {
        map[WorkItemAttachment.typeField] = workItemAttachmentPb.type;
      }
      if (workItemAttachmentPb.hasContent()) {
        map[WorkItemAttachment.contentField] = workItemAttachmentPb.content;
      }

    }
    return map;
  }
}

class WorkItemCheckItem {
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;
  static const String nameField = 'name';
  String name;
  static const String finishedField = 'finished';
  bool finished;

  // Define check item order
  static const String indexField = 'index';
  int index;

  work_work_item_pb.WorkItemCheckItem writeToProtoBuf() {
    work_work_item_pb.WorkItemCheckItem workItemCheckItemPb = work_work_item_pb.WorkItemCheckItem();

    if (id != null) workItemCheckItemPb.id = id;
    if (name != null) workItemCheckItemPb.name = name;
    if (finished != null) workItemCheckItemPb.finished = finished;
    if (index != null) workItemCheckItemPb.index = index;

    return workItemCheckItemPb;
  }

  void readFromProtoBuf(work_work_item_pb.WorkItemCheckItem workItemCheckItemPb) {
    if (workItemCheckItemPb.hasId()) id = workItemCheckItemPb.id;
    if (workItemCheckItemPb.hasName()) name = workItemCheckItemPb.name;
    if (workItemCheckItemPb.hasFinished()) finished = workItemCheckItemPb.finished;
    if (workItemCheckItemPb.hasIndex()) index = workItemCheckItemPb.index;
  }

  static Map<String, dynamic> fromProtoBufToModelMap(work_work_item_pb.WorkItemCheckItem workItemCheckItemPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (workItemCheckItemPb.hasId()) {
        map[WorkItemCheckItem.idField] = workItemCheckItemPb.id;
      }
      if (workItemCheckItemPb.hasName()) {
        map[WorkItemCheckItem.nameField] = workItemCheckItemPb.name;
      }
    } else {
      if (workItemCheckItemPb.hasId()) {
        map[WorkItemCheckItem.idField] = workItemCheckItemPb.id;
      }
      if (workItemCheckItemPb.hasName()) {
        map[WorkItemCheckItem.nameField] = workItemCheckItemPb.name;
      }
      if (workItemCheckItemPb.hasFinished()) {
        map[WorkItemCheckItem.finishedField] = workItemCheckItemPb.finished;
      }
      if (workItemCheckItemPb.hasIndex()) {
        map[WorkItemCheckItem.indexField] = workItemCheckItemPb.index;
      }
    }
    return map;
  }
}

class WorkItemValue {
  static const String className = 'WorkItemValue';

  // Base - implements
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;
  //static const String isDeletedField = 'isDeleted';
  //bool isDeleted;

  // Base - History - Transient
  // REFACTOR HistoryItem lastHistoryItem;

  // Specific
  static const String dateField = 'date';
  DateTime date;
  static const String actualValueField = 'actualValue';
  double actualValue;
  static const String commentField = 'comment';
  String comment;
  static const String archivedField = 'archived';
  bool archived;
  static const String workItemField = 'workItem';
  WorkItem workItem;

  WorkItemValue() {
    // lastHistoryItem = HistoryItem();
  }

  work_work_item_pb.WorkItemValue writeToProtoBuf() {
    work_work_item_pb.WorkItemValue workItemValuePb = work_work_item_pb.WorkItemValue();

    if (id != null) workItemValuePb.id = id;
    if (version != null) workItemValuePb.version = version;

    if (date != null)  workItemValuePb.date =  CommonUtils.timestampFromDateTime(date.toUtc());

    if (actualValue != null) {
      workItemValuePb.actualValue = actualValue;
    }
    if (comment != null) {
      workItemValuePb.comment = comment;
    }

    if (workItem != null) {
      workItemValuePb.workItem = workItem.writeToProtoBuf();
    }

    return workItemValuePb;
  }

  void readFromProtoBuf(work_work_item_pb.WorkItemValue workItemValuePb, Map<String, dynamic> cache) {
    if (workItemValuePb.hasId()) id = workItemValuePb.id;
    if (workItemValuePb.hasVersion()) {
      version = workItemValuePb.version;
    }
    //if (measureProgressPb.hasDate()) this.date = CommonUtils.dateTimeFromTimestamp(measureProgressPb.date);
    if (workItemValuePb.hasDate()) date = workItemValuePb.date.toDateTime();
    /*
        DateTime.fromMicrosecondsSinceEpoch(
            measureProgressPb.date.seconds.toInt() * 1000000 +
                measureProgressPb.date.nanos ~/ 1000);

     */
    if (workItemValuePb.hasActualValue()) {
      actualValue = workItemValuePb.actualValue;
    }
    if (workItemValuePb.hasComment()) {
      comment = workItemValuePb.comment;
    }

    if (workItemValuePb.hasWorkItem()) {
      workItem = WorkItem()..readFromProtoBuf(workItemValuePb.workItem, cache);
    }
  }

  static Map<String, dynamic> fromProtoBufToModelMap(work_work_item_pb.WorkItemValue workItemValuePb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (workItemValuePb.hasId()) {
        map[WorkItemValue.idField] = workItemValuePb.id;
      }
      if (workItemValuePb.hasComment()) {
        map[WorkItemValue.commentField] = workItemValuePb.comment;
      }
    } else {
      if (workItemValuePb.hasId()) {
        map[WorkItemValue.idField] = workItemValuePb.id;
      }
      if (workItemValuePb.hasVersion()) {
        map[WorkItemValue.versionField] = workItemValuePb.version;
      }
      /*
      if (measureProgressPb.hasDate())
        map[MeasureProgress.dateField] = CommonUtils.dateTimeFromTimestamp(measureProgressPb.date);
       */
      if (workItemValuePb.hasDate()) {
        map[WorkItemValue.dateField] = workItemValuePb.date.toDateTime();
      }
      if (workItemValuePb.hasActualValue()) {
        map[WorkItemValue.actualValueField] = workItemValuePb.actualValue;
      }
      if (workItemValuePb.hasComment()) {
        map[WorkItemValue.commentField] = workItemValuePb.comment;
      }

      if (workItemValuePb.hasWorkItem()) {
        map[WorkItemValue.workItemField] =
            WorkItem.fromProtoBufToModelMap(workItemValuePb.workItem, onlyIdAndSpecificationForDepthFields, true);
      }
    }
    return map;
  }
}

