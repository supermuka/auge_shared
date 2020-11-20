///
//  Generated code. Do not modify.
//  source: general/unit_of_measurement.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UnitOfMeasurement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitOfMeasurement', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  UnitOfMeasurement._() : super();
  factory UnitOfMeasurement() => create();
  factory UnitOfMeasurement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitOfMeasurement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitOfMeasurement clone() => UnitOfMeasurement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitOfMeasurement copyWith(void Function(UnitOfMeasurement) updates) => super.copyWith((message) => updates(message as UnitOfMeasurement)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitOfMeasurement create() => UnitOfMeasurement._();
  UnitOfMeasurement createEmptyInstance() => create();
  static $pb.PbList<UnitOfMeasurement> createRepeated() => $pb.PbList<UnitOfMeasurement>();
  @$core.pragma('dart2js:noInline')
  static UnitOfMeasurement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitOfMeasurement>(create);
  static UnitOfMeasurement _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class UnitsOfMeasurementResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnitsOfMeasurementResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<UnitOfMeasurement>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unitsOfMeasurement', $pb.PbFieldType.PM, protoName: 'unitsOfMeasurement', subBuilder: UnitOfMeasurement.create)
    ..hasRequiredFields = false
  ;

  UnitsOfMeasurementResponse._() : super();
  factory UnitsOfMeasurementResponse() => create();
  factory UnitsOfMeasurementResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnitsOfMeasurementResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnitsOfMeasurementResponse clone() => UnitsOfMeasurementResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnitsOfMeasurementResponse copyWith(void Function(UnitsOfMeasurementResponse) updates) => super.copyWith((message) => updates(message as UnitsOfMeasurementResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnitsOfMeasurementResponse create() => UnitsOfMeasurementResponse._();
  UnitsOfMeasurementResponse createEmptyInstance() => create();
  static $pb.PbList<UnitsOfMeasurementResponse> createRepeated() => $pb.PbList<UnitsOfMeasurementResponse>();
  @$core.pragma('dart2js:noInline')
  static UnitsOfMeasurementResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnitsOfMeasurementResponse>(create);
  static UnitsOfMeasurementResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UnitOfMeasurement> get unitsOfMeasurement => $_getList(0);
}

