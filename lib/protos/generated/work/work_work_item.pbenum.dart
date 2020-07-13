///
//  Generated code. Do not modify.
//  source: work/work_work_item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CustomWork extends $pb.ProtobufEnum {
  static const CustomWork workOnlySpecification = CustomWork._(0, 'workOnlySpecification');
  static const CustomWork workOnlyWithWorkItems = CustomWork._(1, 'workOnlyWithWorkItems');
  static const CustomWork workWithWorkItems = CustomWork._(2, 'workWithWorkItems');
  static const CustomWork workWithWorkItemsAndStages = CustomWork._(3, 'workWithWorkItemsAndStages');

  static const $core.List<CustomWork> values = <CustomWork> [
    workOnlySpecification,
    workOnlyWithWorkItems,
    workWithWorkItems,
    workWithWorkItemsAndStages,
  ];

  static final $core.Map<$core.int, CustomWork> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWork valueOf($core.int value) => _byValue[value];

  const CustomWork._($core.int v, $core.String n) : super(v, n);
}

class CustomWorkItem extends $pb.ProtobufEnum {
  static const CustomWorkItem workItemOnlySpecification = CustomWorkItem._(0, 'workItemOnlySpecification');
  static const CustomWorkItem workItemWithoutWork = CustomWorkItem._(1, 'workItemWithoutWork');

  static const $core.List<CustomWorkItem> values = <CustomWorkItem> [
    workItemOnlySpecification,
    workItemWithoutWork,
  ];

  static final $core.Map<$core.int, CustomWorkItem> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWorkItem valueOf($core.int value) => _byValue[value];

  const CustomWorkItem._($core.int v, $core.String n) : super(v, n);
}

class CustomWorkStage extends $pb.ProtobufEnum {
  static const CustomWorkStage workStageOnlySpecification = CustomWorkStage._(0, 'workStageOnlySpecification');
  static const CustomWorkStage workStageWithoutWork = CustomWorkStage._(1, 'workStageWithoutWork');

  static const $core.List<CustomWorkStage> values = <CustomWorkStage> [
    workStageOnlySpecification,
    workStageWithoutWork,
  ];

  static final $core.Map<$core.int, CustomWorkStage> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWorkStage valueOf($core.int value) => _byValue[value];

  const CustomWorkStage._($core.int v, $core.String n) : super(v, n);
}

class CustomWorkItemValue extends $pb.ProtobufEnum {
  static const CustomWorkItemValue workItemValueWithoutWorkItem = CustomWorkItemValue._(0, 'workItemValueWithoutWorkItem');

  static const $core.List<CustomWorkItemValue> values = <CustomWorkItemValue> [
    workItemValueWithoutWorkItem,
  ];

  static final $core.Map<$core.int, CustomWorkItemValue> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWorkItemValue valueOf($core.int value) => _byValue[value];

  const CustomWorkItemValue._($core.int v, $core.String n) : super(v, n);
}

