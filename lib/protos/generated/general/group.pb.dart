///
//  Generated code. Do not modify.
//  source: general/group.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'organization.pb.dart' as $0;
import 'user.pb.dart' as $3;

import 'group.pbenum.dart';

export 'group.pbenum.dart';

class Group extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Group', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inactive')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupTypeIndex', $pb.PbFieldType.O3)
    ..aOM<$0.Organization>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organization', subBuilder: $0.Organization.create)
    ..aOM<Group>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'superGroup', subBuilder: Group.create)
    ..aOM<$3.User>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leader', subBuilder: $3.User.create)
    ..pc<$3.User>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: $3.User.create)
    ..hasRequiredFields = false
  ;

  Group._() : super();
  factory Group() => create();
  factory Group.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Group.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Group clone() => Group()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Group copyWith(void Function(Group) updates) => super.copyWith((message) => updates(message as Group)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Group create() => Group._();
  Group createEmptyInstance() => create();
  static $pb.PbList<Group> createRepeated() => $pb.PbList<Group>();
  @$core.pragma('dart2js:noInline')
  static Group getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Group>(create);
  static Group _defaultInstance;

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
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get inactive => $_getBF(3);
  @$pb.TagNumber(4)
  set inactive($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInactive() => $_has(3);
  @$pb.TagNumber(4)
  void clearInactive() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get groupTypeIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set groupTypeIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupTypeIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupTypeIndex() => clearField(5);

  @$pb.TagNumber(6)
  $0.Organization get organization => $_getN(5);
  @$pb.TagNumber(6)
  set organization($0.Organization v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrganization() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrganization() => clearField(6);
  @$pb.TagNumber(6)
  $0.Organization ensureOrganization() => $_ensure(5);

  @$pb.TagNumber(7)
  Group get superGroup => $_getN(6);
  @$pb.TagNumber(7)
  set superGroup(Group v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSuperGroup() => $_has(6);
  @$pb.TagNumber(7)
  void clearSuperGroup() => clearField(7);
  @$pb.TagNumber(7)
  Group ensureSuperGroup() => $_ensure(6);

  @$pb.TagNumber(8)
  $3.User get leader => $_getN(7);
  @$pb.TagNumber(8)
  set leader($3.User v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasLeader() => $_has(7);
  @$pb.TagNumber(8)
  void clearLeader() => clearField(8);
  @$pb.TagNumber(8)
  $3.User ensureLeader() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.List<$3.User> get members => $_getList(8);
}

class GroupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<Group>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group', subBuilder: Group.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  GroupRequest._() : super();
  factory GroupRequest() => create();
  factory GroupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupRequest clone() => GroupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupRequest copyWith(void Function(GroupRequest) updates) => super.copyWith((message) => updates(message as GroupRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupRequest create() => GroupRequest._();
  GroupRequest createEmptyInstance() => create();
  static $pb.PbList<GroupRequest> createRepeated() => $pb.PbList<GroupRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupRequest>(create);
  static GroupRequest _defaultInstance;

  @$pb.TagNumber(1)
  Group get group => $_getN(0);
  @$pb.TagNumber(1)
  set group(Group v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);
  @$pb.TagNumber(1)
  Group ensureGroup() => $_ensure(0);

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

class GroupDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupVersion', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  GroupDeleteRequest._() : super();
  factory GroupDeleteRequest() => create();
  factory GroupDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupDeleteRequest clone() => GroupDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupDeleteRequest copyWith(void Function(GroupDeleteRequest) updates) => super.copyWith((message) => updates(message as GroupDeleteRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupDeleteRequest create() => GroupDeleteRequest._();
  GroupDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<GroupDeleteRequest> createRepeated() => $pb.PbList<GroupDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupDeleteRequest>(create);
  static GroupDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get groupVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set groupVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupVersion() => clearField(2);

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

class GroupGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..e<CustomGroup>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customGroup', $pb.PbFieldType.OE, defaultOrMaker: CustomGroup.groupOnlySpecification, valueOf: CustomGroup.valueOf, enumValues: CustomGroup.values)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'superGroupRecursive', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GroupGetRequest._() : super();
  factory GroupGetRequest() => create();
  factory GroupGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupGetRequest clone() => GroupGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupGetRequest copyWith(void Function(GroupGetRequest) updates) => super.copyWith((message) => updates(message as GroupGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupGetRequest create() => GroupGetRequest._();
  GroupGetRequest createEmptyInstance() => create();
  static $pb.PbList<GroupGetRequest> createRepeated() => $pb.PbList<GroupGetRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupGetRequest>(create);
  static GroupGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get organizationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set organizationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrganizationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrganizationId() => clearField(2);

  @$pb.TagNumber(3)
  CustomGroup get customGroup => $_getN(2);
  @$pb.TagNumber(3)
  set customGroup(CustomGroup v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCustomGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomGroup() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get superGroupRecursive => $_getIZ(3);
  @$pb.TagNumber(4)
  set superGroupRecursive($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuperGroupRecursive() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuperGroupRecursive() => clearField(4);
}

class GroupTypeGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupTypeGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GroupTypeGetRequest._() : super();
  factory GroupTypeGetRequest() => create();
  factory GroupTypeGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupTypeGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupTypeGetRequest clone() => GroupTypeGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupTypeGetRequest copyWith(void Function(GroupTypeGetRequest) updates) => super.copyWith((message) => updates(message as GroupTypeGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupTypeGetRequest create() => GroupTypeGetRequest._();
  GroupTypeGetRequest createEmptyInstance() => create();
  static $pb.PbList<GroupTypeGetRequest> createRepeated() => $pb.PbList<GroupTypeGetRequest>();
  @$core.pragma('dart2js:noInline')
  static GroupTypeGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupTypeGetRequest>(create);
  static GroupTypeGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GroupsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<Group>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: Group.create)
    ..hasRequiredFields = false
  ;

  GroupsResponse._() : super();
  factory GroupsResponse() => create();
  factory GroupsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupsResponse clone() => GroupsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupsResponse copyWith(void Function(GroupsResponse) updates) => super.copyWith((message) => updates(message as GroupsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupsResponse create() => GroupsResponse._();
  GroupsResponse createEmptyInstance() => create();
  static $pb.PbList<GroupsResponse> createRepeated() => $pb.PbList<GroupsResponse>();
  @$core.pragma('dart2js:noInline')
  static GroupsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupsResponse>(create);
  static GroupsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Group> get groups => $_getList(0);
}

