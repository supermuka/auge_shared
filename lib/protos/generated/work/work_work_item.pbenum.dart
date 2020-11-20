///
//  Generated code. Do not modify.
//  source: work/work_work_item.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CustomWork extends $pb.ProtobufEnum {
  static const CustomWork workOnlySpecification = CustomWork._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workOnlySpecification');
  static const CustomWork workOnlySpecificationAndLeaderUserNotificationEmailIdiom = CustomWork._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workOnlySpecificationAndLeaderUserNotificationEmailIdiom');
  static const CustomWork workOnlyWithWorkItems = CustomWork._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workOnlyWithWorkItems');
  static const CustomWork workWithWorkItems = CustomWork._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workWithWorkItems');
  static const CustomWork workWithWorkItemsAndStages = CustomWork._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workWithWorkItemsAndStages');

  static const $core.List<CustomWork> values = <CustomWork> [
    workOnlySpecification,
    workOnlySpecificationAndLeaderUserNotificationEmailIdiom,
    workOnlyWithWorkItems,
    workWithWorkItems,
    workWithWorkItemsAndStages,
  ];

  static final $core.Map<$core.int, CustomWork> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWork valueOf($core.int value) => _byValue[value];

  const CustomWork._($core.int v, $core.String n) : super(v, n);
}

class CustomWorkItem extends $pb.ProtobufEnum {
  static const CustomWorkItem workItemOnlySpecification = CustomWorkItem._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workItemOnlySpecification');
  static const CustomWorkItem workItemWithoutWork = CustomWorkItem._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workItemWithoutWork');

  static const $core.List<CustomWorkItem> values = <CustomWorkItem> [
    workItemOnlySpecification,
    workItemWithoutWork,
  ];

  static final $core.Map<$core.int, CustomWorkItem> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWorkItem valueOf($core.int value) => _byValue[value];

  const CustomWorkItem._($core.int v, $core.String n) : super(v, n);
}

class CustomWorkStage extends $pb.ProtobufEnum {
  static const CustomWorkStage workStageOnlySpecification = CustomWorkStage._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workStageOnlySpecification');
  static const CustomWorkStage workStageWithoutWork = CustomWorkStage._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workStageWithoutWork');

  static const $core.List<CustomWorkStage> values = <CustomWorkStage> [
    workStageOnlySpecification,
    workStageWithoutWork,
  ];

  static final $core.Map<$core.int, CustomWorkStage> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWorkStage valueOf($core.int value) => _byValue[value];

  const CustomWorkStage._($core.int v, $core.String n) : super(v, n);
}

class CustomWorkItemValue extends $pb.ProtobufEnum {
  static const CustomWorkItemValue workItemValueWithoutWorkItem = CustomWorkItemValue._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'workItemValueWithoutWorkItem');

  static const $core.List<CustomWorkItemValue> values = <CustomWorkItemValue> [
    workItemValueWithoutWorkItem,
  ];

  static final $core.Map<$core.int, CustomWorkItemValue> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomWorkItemValue valueOf($core.int value) => _byValue[value];

  const CustomWorkItemValue._($core.int v, $core.String n) : super(v, n);
}

