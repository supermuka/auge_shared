///
//  Generated code. Do not modify.
//  source: general/common.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $1;

class DateTimeGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DateTimeGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isUtc')
    ..hasRequiredFields = false
  ;

  DateTimeGetRequest._() : super();
  factory DateTimeGetRequest() => create();
  factory DateTimeGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DateTimeGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DateTimeGetRequest clone() => DateTimeGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DateTimeGetRequest copyWith(void Function(DateTimeGetRequest) updates) => super.copyWith((message) => updates(message as DateTimeGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DateTimeGetRequest create() => DateTimeGetRequest._();
  DateTimeGetRequest createEmptyInstance() => create();
  static $pb.PbList<DateTimeGetRequest> createRepeated() => $pb.PbList<DateTimeGetRequest>();
  @$core.pragma('dart2js:noInline')
  static DateTimeGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DateTimeGetRequest>(create);
  static DateTimeGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isUtc => $_getBF(0);
  @$pb.TagNumber(1)
  set isUtc($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsUtc() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsUtc() => clearField(1);
}

class DateTimeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DateTimeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  DateTimeResponse._() : super();
  factory DateTimeResponse() => create();
  factory DateTimeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DateTimeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DateTimeResponse clone() => DateTimeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DateTimeResponse copyWith(void Function(DateTimeResponse) updates) => super.copyWith((message) => updates(message as DateTimeResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DateTimeResponse create() => DateTimeResponse._();
  DateTimeResponse createEmptyInstance() => create();
  static $pb.PbList<DateTimeResponse> createRepeated() => $pb.PbList<DateTimeResponse>();
  @$core.pragma('dart2js:noInline')
  static DateTimeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DateTimeResponse>(create);
  static DateTimeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $1.Timestamp get dateTime => $_getN(0);
  @$pb.TagNumber(1)
  set dateTime($1.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureDateTime() => $_ensure(0);
}

