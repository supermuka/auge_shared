///
//  Generated code. Do not modify.
//  source: objective/objective_measure.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CustomObjective extends $pb.ProtobufEnum {
  static const CustomObjective objectiveOnlySpecification = CustomObjective._(0, 'objectiveOnlySpecification');
  static const CustomObjective objectiveOnlySpecificationStartDateEndDate = CustomObjective._(1, 'objectiveOnlySpecificationStartDateEndDate');
  static const CustomObjective objectiveOnlyWithMeasure = CustomObjective._(2, 'objectiveOnlyWithMeasure');
  static const CustomObjective objectiveTreeAlignedTo = CustomObjective._(3, 'objectiveTreeAlignedTo');

  static const $core.List<CustomObjective> values = <CustomObjective> [
    objectiveOnlySpecification,
    objectiveOnlySpecificationStartDateEndDate,
    objectiveOnlyWithMeasure,
    objectiveTreeAlignedTo,
  ];

  static final $core.Map<$core.int, CustomObjective> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomObjective valueOf($core.int value) => _byValue[value];

  const CustomObjective._($core.int v, $core.String n) : super(v, n);
}

class CustomMeasure extends $pb.ProtobufEnum {
  static const CustomMeasure measureWithoutObjective = CustomMeasure._(0, 'measureWithoutObjective');

  static const $core.List<CustomMeasure> values = <CustomMeasure> [
    measureWithoutObjective,
  ];

  static final $core.Map<$core.int, CustomMeasure> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomMeasure valueOf($core.int value) => _byValue[value];

  const CustomMeasure._($core.int v, $core.String n) : super(v, n);
}

class CustomMeasureProgress extends $pb.ProtobufEnum {
  static const CustomMeasureProgress measureProgressWithoutMeasure = CustomMeasureProgress._(0, 'measureProgressWithoutMeasure');

  static const $core.List<CustomMeasureProgress> values = <CustomMeasureProgress> [
    measureProgressWithoutMeasure,
  ];

  static final $core.Map<$core.int, CustomMeasureProgress> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomMeasureProgress valueOf($core.int value) => _byValue[value];

  const CustomMeasureProgress._($core.int v, $core.String n) : super(v, n);
}

