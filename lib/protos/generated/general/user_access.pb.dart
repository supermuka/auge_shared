///
//  Generated code. Do not modify.
//  source: general/user_access.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $3;
import 'organization.pb.dart' as $0;

class UserAccess extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAccess', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOM<$3.User>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: $3.User.create)
    ..aOM<$0.Organization>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organization', subBuilder: $0.Organization.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessRole', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserAccess._() : super();
  factory UserAccess() => create();
  factory UserAccess.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccess.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAccess clone() => UserAccess()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAccess copyWith(void Function(UserAccess) updates) => super.copyWith((message) => updates(message as UserAccess)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccess create() => UserAccess._();
  UserAccess createEmptyInstance() => create();
  static $pb.PbList<UserAccess> createRepeated() => $pb.PbList<UserAccess>();
  @$core.pragma('dart2js:noInline')
  static UserAccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccess>(create);
  static UserAccess _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $3.User get user => $_getN(2);
  @$pb.TagNumber(3)
  set user($3.User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);
  @$pb.TagNumber(3)
  $3.User ensureUser() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Organization get organization => $_getN(3);
  @$pb.TagNumber(4)
  set organization($0.Organization v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrganization() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrganization() => clearField(4);
  @$pb.TagNumber(4)
  $0.Organization ensureOrganization() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get accessRole => $_getIZ(4);
  @$pb.TagNumber(5)
  set accessRole($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccessRole() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccessRole() => clearField(5);
}

class UserAccessRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAccessRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<UserAccess>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userAccess', subBuilder: UserAccess.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  UserAccessRequest._() : super();
  factory UserAccessRequest() => create();
  factory UserAccessRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccessRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAccessRequest clone() => UserAccessRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAccessRequest copyWith(void Function(UserAccessRequest) updates) => super.copyWith((message) => updates(message as UserAccessRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccessRequest create() => UserAccessRequest._();
  UserAccessRequest createEmptyInstance() => create();
  static $pb.PbList<UserAccessRequest> createRepeated() => $pb.PbList<UserAccessRequest>();
  @$core.pragma('dart2js:noInline')
  static UserAccessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccessRequest>(create);
  static UserAccessRequest _defaultInstance;

  @$pb.TagNumber(1)
  UserAccess get userAccess => $_getN(0);
  @$pb.TagNumber(1)
  set userAccess(UserAccess v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserAccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserAccess() => clearField(1);
  @$pb.TagNumber(1)
  UserAccess ensureUserAccess() => $_ensure(0);

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

class UserAccessDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAccessDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userAccessId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userAccessVersion', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  UserAccessDeleteRequest._() : super();
  factory UserAccessDeleteRequest() => create();
  factory UserAccessDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccessDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAccessDeleteRequest clone() => UserAccessDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAccessDeleteRequest copyWith(void Function(UserAccessDeleteRequest) updates) => super.copyWith((message) => updates(message as UserAccessDeleteRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccessDeleteRequest create() => UserAccessDeleteRequest._();
  UserAccessDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<UserAccessDeleteRequest> createRepeated() => $pb.PbList<UserAccessDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static UserAccessDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccessDeleteRequest>(create);
  static UserAccessDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userAccessId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userAccessId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserAccessId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserAccessId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userAccessVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set userAccessVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserAccessVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserAccessVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get authUserId => $_getSZ(2);
  @$pb.TagNumber(3)
  set authUserId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get authOrganizationId => $_getSZ(3);
  @$pb.TagNumber(4)
  set authOrganizationId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthOrganizationId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthOrganizationId() => clearField(4);
}

class UserAccessGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAccessGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identification')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  UserAccessGetRequest._() : super();
  factory UserAccessGetRequest() => create();
  factory UserAccessGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccessGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAccessGetRequest clone() => UserAccessGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAccessGetRequest copyWith(void Function(UserAccessGetRequest) updates) => super.copyWith((message) => updates(message as UserAccessGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccessGetRequest create() => UserAccessGetRequest._();
  UserAccessGetRequest createEmptyInstance() => create();
  static $pb.PbList<UserAccessGetRequest> createRepeated() => $pb.PbList<UserAccessGetRequest>();
  @$core.pragma('dart2js:noInline')
  static UserAccessGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccessGetRequest>(create);
  static UserAccessGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get organizationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set organizationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrganizationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganizationId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get identification => $_getSZ(3);
  @$pb.TagNumber(4)
  set identification($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdentification() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdentification() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get password => $_getSZ(4);
  @$pb.TagNumber(5)
  set password($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPassword() => $_has(4);
  @$pb.TagNumber(5)
  void clearPassword() => clearField(5);
}

class UserAccessesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAccessesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<UserAccess>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userAccesses', $pb.PbFieldType.PM, subBuilder: UserAccess.create)
    ..hasRequiredFields = false
  ;

  UserAccessesResponse._() : super();
  factory UserAccessesResponse() => create();
  factory UserAccessesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccessesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAccessesResponse clone() => UserAccessesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAccessesResponse copyWith(void Function(UserAccessesResponse) updates) => super.copyWith((message) => updates(message as UserAccessesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccessesResponse create() => UserAccessesResponse._();
  UserAccessesResponse createEmptyInstance() => create();
  static $pb.PbList<UserAccessesResponse> createRepeated() => $pb.PbList<UserAccessesResponse>();
  @$core.pragma('dart2js:noInline')
  static UserAccessesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccessesResponse>(create);
  static UserAccessesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserAccess> get userAccesses => $_getList(0);
}

