///
//  Generated code. Do not modify.
//  source: work/work_work_item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RestrictWork extends $pb.ProtobufEnum {
  static const RestrictWork workNone = RestrictWork._(0, 'workNone');
  static const RestrictWork workIdName = RestrictWork._(1, 'workIdName');

  static const $core.List<RestrictWork> values = <RestrictWork> [
    workNone,
    workIdName,
  ];

  static final $core.Map<$core.int, RestrictWork> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RestrictWork valueOf($core.int value) => _byValue[value];

  const RestrictWork._($core.int v, $core.String n) : super(v, n);
}

class RestrictWorkItem extends $pb.ProtobufEnum {
  static const RestrictWorkItem workItemNone = RestrictWorkItem._(0, 'workItemNone');
  static const RestrictWorkItem workItemIdName = RestrictWorkItem._(1, 'workItemIdName');

  static const $core.List<RestrictWorkItem> values = <RestrictWorkItem> [
    workItemNone,
    workItemIdName,
  ];

  static final $core.Map<$core.int, RestrictWorkItem> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RestrictWorkItem valueOf($core.int value) => _byValue[value];

  const RestrictWorkItem._($core.int v, $core.String n) : super(v, n);
}

