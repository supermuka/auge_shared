///
//  Generated code. Do not modify.
//  source: general/user_control.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $3;
import '../google/protobuf/timestamp.pb.dart' as $5;

import 'user.pbenum.dart' as $3;

class UserControl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserControl', package: const $pb.PackageName('auge.protobuf'), createEmptyInstance: create)
    ..aOM<$3.User>(1, 'user', subBuilder: $3.User.create)
    ..aOM<$5.Timestamp>(2, 'dateTimeLastNotification', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  UserControl._() : super();
  factory UserControl() => create();
  factory UserControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserControl clone() => UserControl()..mergeFromMessage(this);
  UserControl copyWith(void Function(UserControl) updates) => super.copyWith((message) => updates(message as UserControl));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserControl create() => UserControl._();
  UserControl createEmptyInstance() => create();
  static $pb.PbList<UserControl> createRepeated() => $pb.PbList<UserControl>();
  @$core.pragma('dart2js:noInline')
  static UserControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserControl>(create);
  static UserControl _defaultInstance;

  @$pb.TagNumber(1)
  $3.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($3.User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  $3.User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.Timestamp get dateTimeLastNotification => $_getN(1);
  @$pb.TagNumber(2)
  set dateTimeLastNotification($5.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTimeLastNotification() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTimeLastNotification() => clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureDateTimeLastNotification() => $_ensure(1);
}

class UserControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserControlRequest', package: const $pb.PackageName('auge.protobuf'), createEmptyInstance: create)
    ..aOM<UserControl>(1, 'userControl', subBuilder: UserControl.create)
    ..aOS(2, 'authUserId')
    ..aOS(3, 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  UserControlRequest._() : super();
  factory UserControlRequest() => create();
  factory UserControlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserControlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserControlRequest clone() => UserControlRequest()..mergeFromMessage(this);
  UserControlRequest copyWith(void Function(UserControlRequest) updates) => super.copyWith((message) => updates(message as UserControlRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserControlRequest create() => UserControlRequest._();
  UserControlRequest createEmptyInstance() => create();
  static $pb.PbList<UserControlRequest> createRepeated() => $pb.PbList<UserControlRequest>();
  @$core.pragma('dart2js:noInline')
  static UserControlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserControlRequest>(create);
  static UserControlRequest _defaultInstance;

  @$pb.TagNumber(1)
  UserControl get userControl => $_getN(0);
  @$pb.TagNumber(1)
  set userControl(UserControl v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserControl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserControl() => clearField(1);
  @$pb.TagNumber(1)
  UserControl ensureUserControl() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get authUserId => $_getSZ(1);
  @$pb.TagNumber(2)
  set authUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get authOrganizationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set authOrganizationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthOrganizationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthOrganizationId() => clearField(3);
}

class UserControlGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserControlGetRequest', package: const $pb.PackageName('auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..e<$3.RestrictUser>(2, 'restrictUser', $pb.PbFieldType.OE, defaultOrMaker: $3.RestrictUser.userNone, valueOf: $3.RestrictUser.valueOf, enumValues: $3.RestrictUser.values)
    ..hasRequiredFields = false
  ;

  UserControlGetRequest._() : super();
  factory UserControlGetRequest() => create();
  factory UserControlGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserControlGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserControlGetRequest clone() => UserControlGetRequest()..mergeFromMessage(this);
  UserControlGetRequest copyWith(void Function(UserControlGetRequest) updates) => super.copyWith((message) => updates(message as UserControlGetRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserControlGetRequest create() => UserControlGetRequest._();
  UserControlGetRequest createEmptyInstance() => create();
  static $pb.PbList<UserControlGetRequest> createRepeated() => $pb.PbList<UserControlGetRequest>();
  @$core.pragma('dart2js:noInline')
  static UserControlGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserControlGetRequest>(create);
  static UserControlGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $3.RestrictUser get restrictUser => $_getN(1);
  @$pb.TagNumber(2)
  set restrictUser($3.RestrictUser v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRestrictUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearRestrictUser() => clearField(2);
}

class UserControlDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserControlDeleteRequest', package: const $pb.PackageName('auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, 'userId')
    ..aOS(3, 'authUserId')
    ..aOS(4, 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  UserControlDeleteRequest._() : super();
  factory UserControlDeleteRequest() => create();
  factory UserControlDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserControlDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UserControlDeleteRequest clone() => UserControlDeleteRequest()..mergeFromMessage(this);
  UserControlDeleteRequest copyWith(void Function(UserControlDeleteRequest) updates) => super.copyWith((message) => updates(message as UserControlDeleteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserControlDeleteRequest create() => UserControlDeleteRequest._();
  UserControlDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<UserControlDeleteRequest> createRepeated() => $pb.PbList<UserControlDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static UserControlDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserControlDeleteRequest>(create);
  static UserControlDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get authUserId => $_getSZ(1);
  @$pb.TagNumber(3)
  set authUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthUserId() => $_has(1);
  @$pb.TagNumber(3)
  void clearAuthUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get authOrganizationId => $_getSZ(2);
  @$pb.TagNumber(4)
  set authOrganizationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthOrganizationId() => $_has(2);
  @$pb.TagNumber(4)
  void clearAuthOrganizationId() => clearField(4);
}

