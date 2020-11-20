///
//  Generated code. Do not modify.
//  source: general/user.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CustomUser extends $pb.ProtobufEnum {
  static const CustomUser userOnlySpecification = CustomUser._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'userOnlySpecification');
  static const CustomUser userOnlySpecificationProfileImage = CustomUser._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'userOnlySpecificationProfileImage');
  static const CustomUser userOnlySpecificationProfileNotificationEmailIdiom = CustomUser._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'userOnlySpecificationProfileNotificationEmailIdiom');

  static const $core.List<CustomUser> values = <CustomUser> [
    userOnlySpecification,
    userOnlySpecificationProfileImage,
    userOnlySpecificationProfileNotificationEmailIdiom,
  ];

  static final $core.Map<$core.int, CustomUser> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomUser valueOf($core.int value) => _byValue[value];

  const CustomUser._($core.int v, $core.String n) : super(v, n);
}

