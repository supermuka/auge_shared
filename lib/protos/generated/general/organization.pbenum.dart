///
//  Generated code. Do not modify.
//  source: general/organization.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CustomOrganization extends $pb.ProtobufEnum {
  static const CustomOrganization organizationSpecification = CustomOrganization._(0, 'organizationSpecification');

  static const $core.List<CustomOrganization> values = <CustomOrganization> [
    organizationSpecification,
  ];

  static final $core.Map<$core.int, CustomOrganization> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CustomOrganization valueOf($core.int value) => _byValue[value];

  const CustomOrganization._($core.int v, $core.String n) : super(v, n);
}

