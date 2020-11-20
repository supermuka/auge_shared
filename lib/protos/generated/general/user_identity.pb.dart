///
//  Generated code. Do not modify.
//  source: general/user_identity.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $3;

class UserIdentity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIdentity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identification')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passwordSalt')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passwordHash')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'providerObjectId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'providerDn')
    ..aOM<$3.User>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: $3.User.create)
    ..hasRequiredFields = false
  ;

  UserIdentity._() : super();
  factory UserIdentity() => create();
  factory UserIdentity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdentity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIdentity clone() => UserIdentity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIdentity copyWith(void Function(UserIdentity) updates) => super.copyWith((message) => updates(message as UserIdentity)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdentity create() => UserIdentity._();
  UserIdentity createEmptyInstance() => create();
  static $pb.PbList<UserIdentity> createRepeated() => $pb.PbList<UserIdentity>();
  @$core.pragma('dart2js:noInline')
  static UserIdentity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdentity>(create);
  static UserIdentity _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get identification => $_getSZ(2);
  @$pb.TagNumber(4)
  set identification($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdentification() => $_has(2);
  @$pb.TagNumber(4)
  void clearIdentification() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(5)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(5)
  void clearPassword() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get passwordSalt => $_getSZ(4);
  @$pb.TagNumber(6)
  set passwordSalt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasPasswordSalt() => $_has(4);
  @$pb.TagNumber(6)
  void clearPasswordSalt() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get passwordHash => $_getSZ(5);
  @$pb.TagNumber(7)
  set passwordHash($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasPasswordHash() => $_has(5);
  @$pb.TagNumber(7)
  void clearPasswordHash() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get provider => $_getIZ(6);
  @$pb.TagNumber(8)
  set provider($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasProvider() => $_has(6);
  @$pb.TagNumber(8)
  void clearProvider() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get providerObjectId => $_getSZ(7);
  @$pb.TagNumber(9)
  set providerObjectId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasProviderObjectId() => $_has(7);
  @$pb.TagNumber(9)
  void clearProviderObjectId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get providerDn => $_getSZ(8);
  @$pb.TagNumber(10)
  set providerDn($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasProviderDn() => $_has(8);
  @$pb.TagNumber(10)
  void clearProviderDn() => clearField(10);

  @$pb.TagNumber(11)
  $3.User get user => $_getN(9);
  @$pb.TagNumber(11)
  set user($3.User v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUser() => $_has(9);
  @$pb.TagNumber(11)
  void clearUser() => clearField(11);
  @$pb.TagNumber(11)
  $3.User ensureUser() => $_ensure(9);
}

class UserIdentityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIdentityRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<UserIdentity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIdentity', subBuilder: UserIdentity.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  UserIdentityRequest._() : super();
  factory UserIdentityRequest() => create();
  factory UserIdentityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdentityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIdentityRequest clone() => UserIdentityRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIdentityRequest copyWith(void Function(UserIdentityRequest) updates) => super.copyWith((message) => updates(message as UserIdentityRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdentityRequest create() => UserIdentityRequest._();
  UserIdentityRequest createEmptyInstance() => create();
  static $pb.PbList<UserIdentityRequest> createRepeated() => $pb.PbList<UserIdentityRequest>();
  @$core.pragma('dart2js:noInline')
  static UserIdentityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdentityRequest>(create);
  static UserIdentityRequest _defaultInstance;

  @$pb.TagNumber(1)
  UserIdentity get userIdentity => $_getN(0);
  @$pb.TagNumber(1)
  set userIdentity(UserIdentity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserIdentity() => clearField(1);
  @$pb.TagNumber(1)
  UserIdentity ensureUserIdentity() => $_ensure(0);

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

class UserIdentityDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIdentityDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIdentityId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIdentityVersion', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  UserIdentityDeleteRequest._() : super();
  factory UserIdentityDeleteRequest() => create();
  factory UserIdentityDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdentityDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIdentityDeleteRequest clone() => UserIdentityDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIdentityDeleteRequest copyWith(void Function(UserIdentityDeleteRequest) updates) => super.copyWith((message) => updates(message as UserIdentityDeleteRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdentityDeleteRequest create() => UserIdentityDeleteRequest._();
  UserIdentityDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<UserIdentityDeleteRequest> createRepeated() => $pb.PbList<UserIdentityDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static UserIdentityDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdentityDeleteRequest>(create);
  static UserIdentityDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userIdentityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userIdentityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserIdentityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserIdentityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userIdentityVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set userIdentityVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserIdentityVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserIdentityVersion() => clearField(2);

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

class UserIdentityGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIdentityGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identification')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'managedByOrganizationId')
    ..hasRequiredFields = false
  ;

  UserIdentityGetRequest._() : super();
  factory UserIdentityGetRequest() => create();
  factory UserIdentityGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdentityGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIdentityGetRequest clone() => UserIdentityGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIdentityGetRequest copyWith(void Function(UserIdentityGetRequest) updates) => super.copyWith((message) => updates(message as UserIdentityGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdentityGetRequest create() => UserIdentityGetRequest._();
  UserIdentityGetRequest createEmptyInstance() => create();
  static $pb.PbList<UserIdentityGetRequest> createRepeated() => $pb.PbList<UserIdentityGetRequest>();
  @$core.pragma('dart2js:noInline')
  static UserIdentityGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdentityGetRequest>(create);
  static UserIdentityGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get identification => $_getSZ(1);
  @$pb.TagNumber(2)
  set identification($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdentification() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentification() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get managedByOrganizationId => $_getSZ(4);
  @$pb.TagNumber(5)
  set managedByOrganizationId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasManagedByOrganizationId() => $_has(4);
  @$pb.TagNumber(5)
  void clearManagedByOrganizationId() => clearField(5);
}

class NewPasswordCodeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewPasswordCodeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identification')
    ..hasRequiredFields = false
  ;

  NewPasswordCodeRequest._() : super();
  factory NewPasswordCodeRequest() => create();
  factory NewPasswordCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewPasswordCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewPasswordCodeRequest clone() => NewPasswordCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewPasswordCodeRequest copyWith(void Function(NewPasswordCodeRequest) updates) => super.copyWith((message) => updates(message as NewPasswordCodeRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewPasswordCodeRequest create() => NewPasswordCodeRequest._();
  NewPasswordCodeRequest createEmptyInstance() => create();
  static $pb.PbList<NewPasswordCodeRequest> createRepeated() => $pb.PbList<NewPasswordCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static NewPasswordCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewPasswordCodeRequest>(create);
  static NewPasswordCodeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identification => $_getSZ(0);
  @$pb.TagNumber(1)
  set identification($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentification() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentification() => clearField(1);
}

class UserIdentityPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIdentityPasswordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identification')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  UserIdentityPasswordRequest._() : super();
  factory UserIdentityPasswordRequest() => create();
  factory UserIdentityPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdentityPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIdentityPasswordRequest clone() => UserIdentityPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIdentityPasswordRequest copyWith(void Function(UserIdentityPasswordRequest) updates) => super.copyWith((message) => updates(message as UserIdentityPasswordRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdentityPasswordRequest create() => UserIdentityPasswordRequest._();
  UserIdentityPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<UserIdentityPasswordRequest> createRepeated() => $pb.PbList<UserIdentityPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static UserIdentityPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdentityPasswordRequest>(create);
  static UserIdentityPasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identification => $_getSZ(0);
  @$pb.TagNumber(1)
  set identification($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentification() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentification() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class UserIdentitiesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserIdentitiesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<UserIdentity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIdentities', $pb.PbFieldType.PM, protoName: 'userIdentities', subBuilder: UserIdentity.create)
    ..hasRequiredFields = false
  ;

  UserIdentitiesResponse._() : super();
  factory UserIdentitiesResponse() => create();
  factory UserIdentitiesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserIdentitiesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserIdentitiesResponse clone() => UserIdentitiesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserIdentitiesResponse copyWith(void Function(UserIdentitiesResponse) updates) => super.copyWith((message) => updates(message as UserIdentitiesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserIdentitiesResponse create() => UserIdentitiesResponse._();
  UserIdentitiesResponse createEmptyInstance() => create();
  static $pb.PbList<UserIdentitiesResponse> createRepeated() => $pb.PbList<UserIdentitiesResponse>();
  @$core.pragma('dart2js:noInline')
  static UserIdentitiesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserIdentitiesResponse>(create);
  static UserIdentitiesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserIdentity> get userIdentities => $_getList(0);
}

class NewPasswordCodeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewPasswordCodeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eMail')
    ..hasRequiredFields = false
  ;

  NewPasswordCodeResponse._() : super();
  factory NewPasswordCodeResponse() => create();
  factory NewPasswordCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewPasswordCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewPasswordCodeResponse clone() => NewPasswordCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewPasswordCodeResponse copyWith(void Function(NewPasswordCodeResponse) updates) => super.copyWith((message) => updates(message as NewPasswordCodeResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewPasswordCodeResponse create() => NewPasswordCodeResponse._();
  NewPasswordCodeResponse createEmptyInstance() => create();
  static $pb.PbList<NewPasswordCodeResponse> createRepeated() => $pb.PbList<NewPasswordCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static NewPasswordCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewPasswordCodeResponse>(create);
  static NewPasswordCodeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get eMail => $_getSZ(1);
  @$pb.TagNumber(2)
  set eMail($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEMail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEMail() => clearField(2);
}

