///
//  Generated code. Do not modify.
//  source: general/user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CustomUser extends $pb.ProtobufEnum {
  static const CustomUser userOnlySpecification = CustomUser._(0, 'userOnlySpecification');
  static const CustomUser userOnlySpecificationProfileImage = CustomUser._(1, 'userOnlySpecificationProfileImage');
  static const CustomUser userOnlySpecificationProfileNotificationEmailIdiom = CustomUser._(2, 'userOnlySpecificationProfileNotificationEmailIdiom');

  static const $core.List<CustomUser> values = <CustomUser> [
    userOnlySpecification,
    userOnlySpecificationProfileImage,
    userOnlySpecificationProfileNotificationEmailIdiom,
  ];

  static final $core.Map<$core.int, CustomUser> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomUser valueOf($core.int value) => _byValue[value];

  const CustomUser._($core.int v, $core.String n) : super(v, n);
}

