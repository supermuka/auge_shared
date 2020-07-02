///
//  Generated code. Do not modify.
//  source: general/organization.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RestrictOrganization extends $pb.ProtobufEnum {
  static const RestrictOrganization organizationNone = RestrictOrganization._(0, 'organizationNone');
  static const RestrictOrganization organizationIdName = RestrictOrganization._(1, 'organizationIdName');

  static const $core.List<RestrictOrganization> values = <RestrictOrganization> [
    organizationNone,
    organizationIdName,
  ];

  static final $core.Map<$core.int, RestrictOrganization> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RestrictOrganization valueOf($core.int value) => _byValue[value];

  const RestrictOrganization._($core.int v, $core.String n) : super(v, n);
}

