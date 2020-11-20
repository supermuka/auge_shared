///
//  Generated code. Do not modify.
//  source: objective/objective_measure.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CustomObjective extends $pb.ProtobufEnum {
  static const CustomObjective objectiveOnlySpecification = CustomObjective._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'objectiveOnlySpecification');
  static const CustomObjective objectiveOnlySpecificationAndLeaderUserNotificationEmailIdiom = CustomObjective._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'objectiveOnlySpecificationAndLeaderUserNotificationEmailIdiom');
  static const CustomObjective objectiveOnlySpecificationStartDateEndDate = CustomObjective._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'objectiveOnlySpecificationStartDateEndDate');
  static const CustomObjective objectiveOnlyWithMeasure = CustomObjective._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'objectiveOnlyWithMeasure');
  static const CustomObjective objectiveWithMeasure = CustomObjective._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'objectiveWithMeasure');
  static const CustomObjective objectiveWithMeasureAndTree = CustomObjective._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'objectiveWithMeasureAndTree');

  static const $core.List<CustomObjective> values = <CustomObjective> [
    objectiveOnlySpecification,
    objectiveOnlySpecificationAndLeaderUserNotificationEmailIdiom,
    objectiveOnlySpecificationStartDateEndDate,
    objectiveOnlyWithMeasure,
    objectiveWithMeasure,
    objectiveWithMeasureAndTree,
  ];

  static final $core.Map<$core.int, CustomObjective> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomObjective valueOf($core.int value) => _byValue[value];

  const CustomObjective._($core.int v, $core.String n) : super(v, n);
}

class CustomMeasure extends $pb.ProtobufEnum {
  static const CustomMeasure measureOnlySpecification = CustomMeasure._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'measureOnlySpecification');
  static const CustomMeasure measureWithoutObjective = CustomMeasure._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'measureWithoutObjective');

  static const $core.List<CustomMeasure> values = <CustomMeasure> [
    measureOnlySpecification,
    measureWithoutObjective,
  ];

  static final $core.Map<$core.int, CustomMeasure> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomMeasure valueOf($core.int value) => _byValue[value];

  const CustomMeasure._($core.int v, $core.String n) : super(v, n);
}

class CustomMeasureProgress extends $pb.ProtobufEnum {
  static const CustomMeasureProgress measureProgressWithoutMeasure = CustomMeasureProgress._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'measureProgressWithoutMeasure');

  static const $core.List<CustomMeasureProgress> values = <CustomMeasureProgress> [
    measureProgressWithoutMeasure,
  ];

  static final $core.Map<$core.int, CustomMeasureProgress> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomMeasureProgress valueOf($core.int value) => _byValue[value];

  const CustomMeasureProgress._($core.int v, $core.String n) : super(v, n);
}

