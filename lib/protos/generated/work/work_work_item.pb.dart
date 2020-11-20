///
//  Generated code. Do not modify.
//  source: work/work_work_item.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../objective/objective_measure.pb.dart' as $6;
import '../general/organization.pb.dart' as $0;
import '../general/group.pb.dart' as $4;
import '../general/user.pb.dart' as $3;
import '../google/protobuf/timestamp.pb.dart' as $8;
import '../general/unit_of_measurement.pb.dart' as $5;

import 'work_work_item.pbenum.dart';

export 'work_work_item.pbenum.dart';

class Work extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Work', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'archived')
    ..pc<WorkStage>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workStages', $pb.PbFieldType.PM, subBuilder: WorkStage.create)
    ..pc<WorkItem>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItems', $pb.PbFieldType.PM, subBuilder: WorkItem.create)
    ..aOM<$6.Objective>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'objective', subBuilder: $6.Objective.create)
    ..aOM<$0.Organization>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organization', subBuilder: $0.Organization.create)
    ..aOM<$4.Group>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group', subBuilder: $4.Group.create)
    ..aOM<$3.User>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leader', subBuilder: $3.User.create)
    ..hasRequiredFields = false
  ;

  Work._() : super();
  factory Work() => create();
  factory Work.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Work.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Work clone() => Work()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Work copyWith(void Function(Work) updates) => super.copyWith((message) => updates(message as Work)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Work create() => Work._();
  Work createEmptyInstance() => create();
  static $pb.PbList<Work> createRepeated() => $pb.PbList<Work>();
  @$core.pragma('dart2js:noInline')
  static Work getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Work>(create);
  static Work _defaultInstance;

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
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get archived => $_getBF(4);
  @$pb.TagNumber(5)
  set archived($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasArchived() => $_has(4);
  @$pb.TagNumber(5)
  void clearArchived() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<WorkStage> get workStages => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<WorkItem> get workItems => $_getList(6);

  @$pb.TagNumber(8)
  $6.Objective get objective => $_getN(7);
  @$pb.TagNumber(8)
  set objective($6.Objective v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasObjective() => $_has(7);
  @$pb.TagNumber(8)
  void clearObjective() => clearField(8);
  @$pb.TagNumber(8)
  $6.Objective ensureObjective() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.Organization get organization => $_getN(8);
  @$pb.TagNumber(9)
  set organization($0.Organization v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasOrganization() => $_has(8);
  @$pb.TagNumber(9)
  void clearOrganization() => clearField(9);
  @$pb.TagNumber(9)
  $0.Organization ensureOrganization() => $_ensure(8);

  @$pb.TagNumber(10)
  $4.Group get group => $_getN(9);
  @$pb.TagNumber(10)
  set group($4.Group v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasGroup() => $_has(9);
  @$pb.TagNumber(10)
  void clearGroup() => clearField(10);
  @$pb.TagNumber(10)
  $4.Group ensureGroup() => $_ensure(9);

  @$pb.TagNumber(11)
  $3.User get leader => $_getN(10);
  @$pb.TagNumber(11)
  set leader($3.User v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasLeader() => $_has(10);
  @$pb.TagNumber(11)
  void clearLeader() => clearField(11);
  @$pb.TagNumber(11)
  $3.User ensureLeader() => $_ensure(10);
}

class WorkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<Work>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'work', subBuilder: Work.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkRequest._() : super();
  factory WorkRequest() => create();
  factory WorkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkRequest clone() => WorkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkRequest copyWith(void Function(WorkRequest) updates) => super.copyWith((message) => updates(message as WorkRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkRequest create() => WorkRequest._();
  WorkRequest createEmptyInstance() => create();
  static $pb.PbList<WorkRequest> createRepeated() => $pb.PbList<WorkRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkRequest>(create);
  static WorkRequest _defaultInstance;

  @$pb.TagNumber(1)
  Work get work => $_getN(0);
  @$pb.TagNumber(1)
  set work(Work v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWork() => $_has(0);
  @$pb.TagNumber(1)
  void clearWork() => clearField(1);
  @$pb.TagNumber(1)
  Work ensureWork() => $_ensure(0);

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

class WorkDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workVersion', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkDeleteRequest._() : super();
  factory WorkDeleteRequest() => create();
  factory WorkDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkDeleteRequest clone() => WorkDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkDeleteRequest copyWith(void Function(WorkDeleteRequest) updates) => super.copyWith((message) => updates(message as WorkDeleteRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkDeleteRequest create() => WorkDeleteRequest._();
  WorkDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<WorkDeleteRequest> createRepeated() => $pb.PbList<WorkDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkDeleteRequest>(create);
  static WorkDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get workId => $_getSZ(0);
  @$pb.TagNumber(1)
  set workId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get workVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set workVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkVersion() => clearField(2);

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

class WorksResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorksResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<Work>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'works', $pb.PbFieldType.PM, subBuilder: Work.create)
    ..hasRequiredFields = false
  ;

  WorksResponse._() : super();
  factory WorksResponse() => create();
  factory WorksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorksResponse clone() => WorksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorksResponse copyWith(void Function(WorksResponse) updates) => super.copyWith((message) => updates(message as WorksResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorksResponse create() => WorksResponse._();
  WorksResponse createEmptyInstance() => create();
  static $pb.PbList<WorksResponse> createRepeated() => $pb.PbList<WorksResponse>();
  @$core.pragma('dart2js:noInline')
  static WorksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorksResponse>(create);
  static WorksResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Work> get works => $_getList(0);
}

class WorkGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'objectiveId')
    ..e<CustomWork>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customWork', $pb.PbFieldType.OE, defaultOrMaker: CustomWork.workOnlySpecification, valueOf: CustomWork.valueOf, enumValues: CustomWork.values)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withArchived')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupIds')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leaderUserIds')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemWithArchived')
    ..pPS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemAssignedToIds')
    ..hasRequiredFields = false
  ;

  WorkGetRequest._() : super();
  factory WorkGetRequest() => create();
  factory WorkGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkGetRequest clone() => WorkGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkGetRequest copyWith(void Function(WorkGetRequest) updates) => super.copyWith((message) => updates(message as WorkGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkGetRequest create() => WorkGetRequest._();
  WorkGetRequest createEmptyInstance() => create();
  static $pb.PbList<WorkGetRequest> createRepeated() => $pb.PbList<WorkGetRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkGetRequest>(create);
  static WorkGetRequest _defaultInstance;

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
  $core.String get workItemId => $_getSZ(2);
  @$pb.TagNumber(3)
  set workItemId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWorkItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkItemId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get objectiveId => $_getSZ(3);
  @$pb.TagNumber(4)
  set objectiveId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasObjectiveId() => $_has(3);
  @$pb.TagNumber(4)
  void clearObjectiveId() => clearField(4);

  @$pb.TagNumber(5)
  CustomWork get customWork => $_getN(4);
  @$pb.TagNumber(5)
  set customWork(CustomWork v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCustomWork() => $_has(4);
  @$pb.TagNumber(5)
  void clearCustomWork() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get withArchived => $_getBF(5);
  @$pb.TagNumber(6)
  set withArchived($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWithArchived() => $_has(5);
  @$pb.TagNumber(6)
  void clearWithArchived() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get groupIds => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get leaderUserIds => $_getList(7);

  @$pb.TagNumber(9)
  $core.bool get workItemWithArchived => $_getBF(8);
  @$pb.TagNumber(9)
  set workItemWithArchived($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasWorkItemWithArchived() => $_has(8);
  @$pb.TagNumber(9)
  void clearWorkItemWithArchived() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get workItemAssignedToIds => $_getList(9);
}

class WorkItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<$8.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dueDate', subBuilder: $8.Timestamp.create)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'plannedValue', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actualValue', $pb.PbFieldType.OD)
    ..aOM<$5.UnitOfMeasurement>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unitOfMeasurement', subBuilder: $5.UnitOfMeasurement.create)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'archived')
    ..aOM<WorkStage>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workStage', subBuilder: WorkStage.create)
    ..pc<$3.User>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignedTo', $pb.PbFieldType.PM, subBuilder: $3.User.create)
    ..pc<WorkItemCheckItem>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'checkItems', $pb.PbFieldType.PM, subBuilder: WorkItemCheckItem.create)
    ..pc<WorkItemAttachment>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attachments', $pb.PbFieldType.PM, subBuilder: WorkItemAttachment.create)
    ..aOM<Work>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'work', subBuilder: Work.create)
    ..hasRequiredFields = false
  ;

  WorkItem._() : super();
  factory WorkItem() => create();
  factory WorkItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItem clone() => WorkItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItem copyWith(void Function(WorkItem) updates) => super.copyWith((message) => updates(message as WorkItem)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItem create() => WorkItem._();
  WorkItem createEmptyInstance() => create();
  static $pb.PbList<WorkItem> createRepeated() => $pb.PbList<WorkItem>();
  @$core.pragma('dart2js:noInline')
  static WorkItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItem>(create);
  static WorkItem _defaultInstance;

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
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $8.Timestamp get dueDate => $_getN(4);
  @$pb.TagNumber(5)
  set dueDate($8.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDueDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDueDate() => clearField(5);
  @$pb.TagNumber(5)
  $8.Timestamp ensureDueDate() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.double get plannedValue => $_getN(5);
  @$pb.TagNumber(6)
  set plannedValue($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlannedValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlannedValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get actualValue => $_getN(6);
  @$pb.TagNumber(7)
  set actualValue($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasActualValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearActualValue() => clearField(7);

  @$pb.TagNumber(8)
  $5.UnitOfMeasurement get unitOfMeasurement => $_getN(7);
  @$pb.TagNumber(8)
  set unitOfMeasurement($5.UnitOfMeasurement v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUnitOfMeasurement() => $_has(7);
  @$pb.TagNumber(8)
  void clearUnitOfMeasurement() => clearField(8);
  @$pb.TagNumber(8)
  $5.UnitOfMeasurement ensureUnitOfMeasurement() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get archived => $_getBF(8);
  @$pb.TagNumber(9)
  set archived($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasArchived() => $_has(8);
  @$pb.TagNumber(9)
  void clearArchived() => clearField(9);

  @$pb.TagNumber(10)
  WorkStage get workStage => $_getN(9);
  @$pb.TagNumber(10)
  set workStage(WorkStage v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasWorkStage() => $_has(9);
  @$pb.TagNumber(10)
  void clearWorkStage() => clearField(10);
  @$pb.TagNumber(10)
  WorkStage ensureWorkStage() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$3.User> get assignedTo => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<WorkItemCheckItem> get checkItems => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<WorkItemAttachment> get attachments => $_getList(12);

  @$pb.TagNumber(14)
  Work get work => $_getN(13);
  @$pb.TagNumber(14)
  set work(Work v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasWork() => $_has(13);
  @$pb.TagNumber(14)
  void clearWork() => clearField(14);
  @$pb.TagNumber(14)
  Work ensureWork() => $_ensure(13);
}

class WorkItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<WorkItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItem', subBuilder: WorkItem.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkItemRequest._() : super();
  factory WorkItemRequest() => create();
  factory WorkItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemRequest clone() => WorkItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemRequest copyWith(void Function(WorkItemRequest) updates) => super.copyWith((message) => updates(message as WorkItemRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemRequest create() => WorkItemRequest._();
  WorkItemRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemRequest> createRepeated() => $pb.PbList<WorkItemRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemRequest>(create);
  static WorkItemRequest _defaultInstance;

  @$pb.TagNumber(1)
  WorkItem get workItem => $_getN(0);
  @$pb.TagNumber(1)
  set workItem(WorkItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkItem() => clearField(1);
  @$pb.TagNumber(1)
  WorkItem ensureWorkItem() => $_ensure(0);

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

class WorkItemDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemVersion', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkItemDeleteRequest._() : super();
  factory WorkItemDeleteRequest() => create();
  factory WorkItemDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemDeleteRequest clone() => WorkItemDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemDeleteRequest copyWith(void Function(WorkItemDeleteRequest) updates) => super.copyWith((message) => updates(message as WorkItemDeleteRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemDeleteRequest create() => WorkItemDeleteRequest._();
  WorkItemDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemDeleteRequest> createRepeated() => $pb.PbList<WorkItemDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemDeleteRequest>(create);
  static WorkItemDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get workItemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set workItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get workItemVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set workItemVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkItemVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkItemVersion() => clearField(2);

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

class WorkItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<WorkItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItems', $pb.PbFieldType.PM, protoName: 'workItems', subBuilder: WorkItem.create)
    ..hasRequiredFields = false
  ;

  WorkItemsResponse._() : super();
  factory WorkItemsResponse() => create();
  factory WorkItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemsResponse clone() => WorkItemsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemsResponse copyWith(void Function(WorkItemsResponse) updates) => super.copyWith((message) => updates(message as WorkItemsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemsResponse create() => WorkItemsResponse._();
  WorkItemsResponse createEmptyInstance() => create();
  static $pb.PbList<WorkItemsResponse> createRepeated() => $pb.PbList<WorkItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static WorkItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemsResponse>(create);
  static WorkItemsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WorkItem> get workItems => $_getList(0);
}

class WorkItemGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..e<CustomWorkItem>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customWorkItem', $pb.PbFieldType.OE, defaultOrMaker: CustomWorkItem.workItemOnlySpecification, valueOf: CustomWorkItem.valueOf, enumValues: CustomWorkItem.values)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withArchived')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignedToIds')
    ..hasRequiredFields = false
  ;

  WorkItemGetRequest._() : super();
  factory WorkItemGetRequest() => create();
  factory WorkItemGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemGetRequest clone() => WorkItemGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemGetRequest copyWith(void Function(WorkItemGetRequest) updates) => super.copyWith((message) => updates(message as WorkItemGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemGetRequest create() => WorkItemGetRequest._();
  WorkItemGetRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemGetRequest> createRepeated() => $pb.PbList<WorkItemGetRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemGetRequest>(create);
  static WorkItemGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get workId => $_getSZ(1);
  @$pb.TagNumber(2)
  set workId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get organizationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set organizationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrganizationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganizationId() => clearField(3);

  @$pb.TagNumber(4)
  CustomWorkItem get customWorkItem => $_getN(3);
  @$pb.TagNumber(4)
  set customWorkItem(CustomWorkItem v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCustomWorkItem() => $_has(3);
  @$pb.TagNumber(4)
  void clearCustomWorkItem() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get withArchived => $_getBF(4);
  @$pb.TagNumber(5)
  set withArchived($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWithArchived() => $_has(4);
  @$pb.TagNumber(5)
  void clearWithArchived() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get assignedToIds => $_getList(5);
}

class WorkItemAttachment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemAttachment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  WorkItemAttachment._() : super();
  factory WorkItemAttachment() => create();
  factory WorkItemAttachment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemAttachment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemAttachment clone() => WorkItemAttachment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemAttachment copyWith(void Function(WorkItemAttachment) updates) => super.copyWith((message) => updates(message as WorkItemAttachment)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemAttachment create() => WorkItemAttachment._();
  WorkItemAttachment createEmptyInstance() => create();
  static $pb.PbList<WorkItemAttachment> createRepeated() => $pb.PbList<WorkItemAttachment>();
  @$core.pragma('dart2js:noInline')
  static WorkItemAttachment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemAttachment>(create);
  static WorkItemAttachment _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);
}

class WorkItemAttachmentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemAttachmentsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<WorkItemAttachment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemAttachments', $pb.PbFieldType.PM, subBuilder: WorkItemAttachment.create)
    ..hasRequiredFields = false
  ;

  WorkItemAttachmentsResponse._() : super();
  factory WorkItemAttachmentsResponse() => create();
  factory WorkItemAttachmentsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemAttachmentsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemAttachmentsResponse clone() => WorkItemAttachmentsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemAttachmentsResponse copyWith(void Function(WorkItemAttachmentsResponse) updates) => super.copyWith((message) => updates(message as WorkItemAttachmentsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemAttachmentsResponse create() => WorkItemAttachmentsResponse._();
  WorkItemAttachmentsResponse createEmptyInstance() => create();
  static $pb.PbList<WorkItemAttachmentsResponse> createRepeated() => $pb.PbList<WorkItemAttachmentsResponse>();
  @$core.pragma('dart2js:noInline')
  static WorkItemAttachmentsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemAttachmentsResponse>(create);
  static WorkItemAttachmentsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WorkItemAttachment> get workItemAttachments => $_getList(0);
}

class WorkItemAttachmentGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemAttachmentGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withContent')
    ..hasRequiredFields = false
  ;

  WorkItemAttachmentGetRequest._() : super();
  factory WorkItemAttachmentGetRequest() => create();
  factory WorkItemAttachmentGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemAttachmentGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemAttachmentGetRequest clone() => WorkItemAttachmentGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemAttachmentGetRequest copyWith(void Function(WorkItemAttachmentGetRequest) updates) => super.copyWith((message) => updates(message as WorkItemAttachmentGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemAttachmentGetRequest create() => WorkItemAttachmentGetRequest._();
  WorkItemAttachmentGetRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemAttachmentGetRequest> createRepeated() => $pb.PbList<WorkItemAttachmentGetRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemAttachmentGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemAttachmentGetRequest>(create);
  static WorkItemAttachmentGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get workItemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set workItemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get withContent => $_getBF(2);
  @$pb.TagNumber(3)
  set withContent($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWithContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearWithContent() => clearField(3);
}

class WorkItemCheckItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemCheckItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finished')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WorkItemCheckItem._() : super();
  factory WorkItemCheckItem() => create();
  factory WorkItemCheckItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemCheckItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemCheckItem clone() => WorkItemCheckItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemCheckItem copyWith(void Function(WorkItemCheckItem) updates) => super.copyWith((message) => updates(message as WorkItemCheckItem)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItem create() => WorkItemCheckItem._();
  WorkItemCheckItem createEmptyInstance() => create();
  static $pb.PbList<WorkItemCheckItem> createRepeated() => $pb.PbList<WorkItemCheckItem>();
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemCheckItem>(create);
  static WorkItemCheckItem _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get finished => $_getBF(2);
  @$pb.TagNumber(3)
  set finished($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFinished() => $_has(2);
  @$pb.TagNumber(3)
  void clearFinished() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get index => $_getIZ(3);
  @$pb.TagNumber(4)
  set index($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearIndex() => clearField(4);
}

class WorkItemCheckItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemCheckItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<WorkItemCheckItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemCheckItem', subBuilder: WorkItemCheckItem.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkItemCheckItemRequest._() : super();
  factory WorkItemCheckItemRequest() => create();
  factory WorkItemCheckItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemCheckItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemCheckItemRequest clone() => WorkItemCheckItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemCheckItemRequest copyWith(void Function(WorkItemCheckItemRequest) updates) => super.copyWith((message) => updates(message as WorkItemCheckItemRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItemRequest create() => WorkItemCheckItemRequest._();
  WorkItemCheckItemRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemCheckItemRequest> createRepeated() => $pb.PbList<WorkItemCheckItemRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemCheckItemRequest>(create);
  static WorkItemCheckItemRequest _defaultInstance;

  @$pb.TagNumber(1)
  WorkItemCheckItem get workItemCheckItem => $_getN(0);
  @$pb.TagNumber(1)
  set workItemCheckItem(WorkItemCheckItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkItemCheckItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkItemCheckItem() => clearField(1);
  @$pb.TagNumber(1)
  WorkItemCheckItem ensureWorkItemCheckItem() => $_ensure(0);

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

class WorkItemCheckItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemCheckItemsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<WorkItemCheckItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemCheckItems', $pb.PbFieldType.PM, subBuilder: WorkItemCheckItem.create)
    ..hasRequiredFields = false
  ;

  WorkItemCheckItemsResponse._() : super();
  factory WorkItemCheckItemsResponse() => create();
  factory WorkItemCheckItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemCheckItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemCheckItemsResponse clone() => WorkItemCheckItemsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemCheckItemsResponse copyWith(void Function(WorkItemCheckItemsResponse) updates) => super.copyWith((message) => updates(message as WorkItemCheckItemsResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItemsResponse create() => WorkItemCheckItemsResponse._();
  WorkItemCheckItemsResponse createEmptyInstance() => create();
  static $pb.PbList<WorkItemCheckItemsResponse> createRepeated() => $pb.PbList<WorkItemCheckItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemCheckItemsResponse>(create);
  static WorkItemCheckItemsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WorkItemCheckItem> get workItemCheckItems => $_getList(0);
}

class WorkItemCheckItemGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemCheckItemGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemId')
    ..hasRequiredFields = false
  ;

  WorkItemCheckItemGetRequest._() : super();
  factory WorkItemCheckItemGetRequest() => create();
  factory WorkItemCheckItemGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemCheckItemGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemCheckItemGetRequest clone() => WorkItemCheckItemGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemCheckItemGetRequest copyWith(void Function(WorkItemCheckItemGetRequest) updates) => super.copyWith((message) => updates(message as WorkItemCheckItemGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItemGetRequest create() => WorkItemCheckItemGetRequest._();
  WorkItemCheckItemGetRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemCheckItemGetRequest> createRepeated() => $pb.PbList<WorkItemCheckItemGetRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemCheckItemGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemCheckItemGetRequest>(create);
  static WorkItemCheckItemGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get workItemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set workItemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkItemId() => clearField(2);
}

class WorkStage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkStage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<Work>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'work', subBuilder: Work.create)
    ..hasRequiredFields = false
  ;

  WorkStage._() : super();
  factory WorkStage() => create();
  factory WorkStage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkStage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkStage clone() => WorkStage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkStage copyWith(void Function(WorkStage) updates) => super.copyWith((message) => updates(message as WorkStage)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkStage create() => WorkStage._();
  WorkStage createEmptyInstance() => create();
  static $pb.PbList<WorkStage> createRepeated() => $pb.PbList<WorkStage>();
  @$core.pragma('dart2js:noInline')
  static WorkStage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkStage>(create);
  static WorkStage _defaultInstance;

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
  $core.int get stateIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set stateIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStateIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearStateIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get index => $_getIZ(4);
  @$pb.TagNumber(5)
  set index($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearIndex() => clearField(5);

  @$pb.TagNumber(6)
  Work get work => $_getN(5);
  @$pb.TagNumber(6)
  set work(Work v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasWork() => $_has(5);
  @$pb.TagNumber(6)
  void clearWork() => clearField(6);
  @$pb.TagNumber(6)
  Work ensureWork() => $_ensure(5);
}

class WorkStageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkStageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<WorkStage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workStage', subBuilder: WorkStage.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkStageRequest._() : super();
  factory WorkStageRequest() => create();
  factory WorkStageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkStageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkStageRequest clone() => WorkStageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkStageRequest copyWith(void Function(WorkStageRequest) updates) => super.copyWith((message) => updates(message as WorkStageRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkStageRequest create() => WorkStageRequest._();
  WorkStageRequest createEmptyInstance() => create();
  static $pb.PbList<WorkStageRequest> createRepeated() => $pb.PbList<WorkStageRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkStageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkStageRequest>(create);
  static WorkStageRequest _defaultInstance;

  @$pb.TagNumber(1)
  WorkStage get workStage => $_getN(0);
  @$pb.TagNumber(1)
  set workStage(WorkStage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkStage() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkStage() => clearField(1);
  @$pb.TagNumber(1)
  WorkStage ensureWorkStage() => $_ensure(0);

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

class WorkStageDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkStageDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workStageId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workStageVersion', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkStageDeleteRequest._() : super();
  factory WorkStageDeleteRequest() => create();
  factory WorkStageDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkStageDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkStageDeleteRequest clone() => WorkStageDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkStageDeleteRequest copyWith(void Function(WorkStageDeleteRequest) updates) => super.copyWith((message) => updates(message as WorkStageDeleteRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkStageDeleteRequest create() => WorkStageDeleteRequest._();
  WorkStageDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<WorkStageDeleteRequest> createRepeated() => $pb.PbList<WorkStageDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkStageDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkStageDeleteRequest>(create);
  static WorkStageDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get workStageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set workStageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkStageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkStageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get workStageVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set workStageVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkStageVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkStageVersion() => clearField(2);

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

class WorkStagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkStagesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<WorkStage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workStages', $pb.PbFieldType.PM, subBuilder: WorkStage.create)
    ..hasRequiredFields = false
  ;

  WorkStagesResponse._() : super();
  factory WorkStagesResponse() => create();
  factory WorkStagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkStagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkStagesResponse clone() => WorkStagesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkStagesResponse copyWith(void Function(WorkStagesResponse) updates) => super.copyWith((message) => updates(message as WorkStagesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkStagesResponse create() => WorkStagesResponse._();
  WorkStagesResponse createEmptyInstance() => create();
  static $pb.PbList<WorkStagesResponse> createRepeated() => $pb.PbList<WorkStagesResponse>();
  @$core.pragma('dart2js:noInline')
  static WorkStagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkStagesResponse>(create);
  static WorkStagesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WorkStage> get workStages => $_getList(0);
}

class WorkStageGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkStageGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workId')
    ..e<CustomWorkStage>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customWorkStage', $pb.PbFieldType.OE, defaultOrMaker: CustomWorkStage.workStageOnlySpecification, valueOf: CustomWorkStage.valueOf, enumValues: CustomWorkStage.values)
    ..hasRequiredFields = false
  ;

  WorkStageGetRequest._() : super();
  factory WorkStageGetRequest() => create();
  factory WorkStageGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkStageGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkStageGetRequest clone() => WorkStageGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkStageGetRequest copyWith(void Function(WorkStageGetRequest) updates) => super.copyWith((message) => updates(message as WorkStageGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkStageGetRequest create() => WorkStageGetRequest._();
  WorkStageGetRequest createEmptyInstance() => create();
  static $pb.PbList<WorkStageGetRequest> createRepeated() => $pb.PbList<WorkStageGetRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkStageGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkStageGetRequest>(create);
  static WorkStageGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get workId => $_getSZ(1);
  @$pb.TagNumber(2)
  set workId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkId() => clearField(2);

  @$pb.TagNumber(3)
  CustomWorkStage get customWorkStage => $_getN(2);
  @$pb.TagNumber(3)
  set customWorkStage(CustomWorkStage v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCustomWorkStage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomWorkStage() => clearField(3);
}

class WorkItemValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOM<$8.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date', subBuilder: $8.Timestamp.create)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actualValue', $pb.PbFieldType.OD)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOM<WorkItem>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItem', subBuilder: WorkItem.create)
    ..hasRequiredFields = false
  ;

  WorkItemValue._() : super();
  factory WorkItemValue() => create();
  factory WorkItemValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemValue clone() => WorkItemValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemValue copyWith(void Function(WorkItemValue) updates) => super.copyWith((message) => updates(message as WorkItemValue)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemValue create() => WorkItemValue._();
  WorkItemValue createEmptyInstance() => create();
  static $pb.PbList<WorkItemValue> createRepeated() => $pb.PbList<WorkItemValue>();
  @$core.pragma('dart2js:noInline')
  static WorkItemValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemValue>(create);
  static WorkItemValue _defaultInstance;

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
  $8.Timestamp get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($8.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $8.Timestamp ensureDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get actualValue => $_getN(3);
  @$pb.TagNumber(4)
  set actualValue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasActualValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearActualValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get comment => $_getSZ(4);
  @$pb.TagNumber(5)
  set comment($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearComment() => clearField(5);

  @$pb.TagNumber(6)
  WorkItem get workItem => $_getN(5);
  @$pb.TagNumber(6)
  set workItem(WorkItem v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasWorkItem() => $_has(5);
  @$pb.TagNumber(6)
  void clearWorkItem() => clearField(6);
  @$pb.TagNumber(6)
  WorkItem ensureWorkItem() => $_ensure(5);
}

class WorkItemValueRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemValueRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOM<WorkItemValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemValue', subBuilder: WorkItemValue.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkItemValueRequest._() : super();
  factory WorkItemValueRequest() => create();
  factory WorkItemValueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemValueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemValueRequest clone() => WorkItemValueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemValueRequest copyWith(void Function(WorkItemValueRequest) updates) => super.copyWith((message) => updates(message as WorkItemValueRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemValueRequest create() => WorkItemValueRequest._();
  WorkItemValueRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemValueRequest> createRepeated() => $pb.PbList<WorkItemValueRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemValueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemValueRequest>(create);
  static WorkItemValueRequest _defaultInstance;

  @$pb.TagNumber(1)
  WorkItemValue get workItemValue => $_getN(0);
  @$pb.TagNumber(1)
  set workItemValue(WorkItemValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkItemValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkItemValue() => clearField(1);
  @$pb.TagNumber(1)
  WorkItemValue ensureWorkItemValue() => $_ensure(0);

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

class WorkItemValueDeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemValueDeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemValueId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemValueVersion', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authOrganizationId')
    ..hasRequiredFields = false
  ;

  WorkItemValueDeleteRequest._() : super();
  factory WorkItemValueDeleteRequest() => create();
  factory WorkItemValueDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemValueDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemValueDeleteRequest clone() => WorkItemValueDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemValueDeleteRequest copyWith(void Function(WorkItemValueDeleteRequest) updates) => super.copyWith((message) => updates(message as WorkItemValueDeleteRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemValueDeleteRequest create() => WorkItemValueDeleteRequest._();
  WorkItemValueDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemValueDeleteRequest> createRepeated() => $pb.PbList<WorkItemValueDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemValueDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemValueDeleteRequest>(create);
  static WorkItemValueDeleteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get workItemValueId => $_getSZ(0);
  @$pb.TagNumber(1)
  set workItemValueId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkItemValueId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkItemValueId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get workItemValueVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set workItemValueVersion($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkItemValueVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkItemValueVersion() => clearField(2);

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

class WorkItemValuesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemValuesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..pc<WorkItemValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemValues', $pb.PbFieldType.PM, subBuilder: WorkItemValue.create)
    ..hasRequiredFields = false
  ;

  WorkItemValuesResponse._() : super();
  factory WorkItemValuesResponse() => create();
  factory WorkItemValuesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemValuesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemValuesResponse clone() => WorkItemValuesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemValuesResponse copyWith(void Function(WorkItemValuesResponse) updates) => super.copyWith((message) => updates(message as WorkItemValuesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemValuesResponse create() => WorkItemValuesResponse._();
  WorkItemValuesResponse createEmptyInstance() => create();
  static $pb.PbList<WorkItemValuesResponse> createRepeated() => $pb.PbList<WorkItemValuesResponse>();
  @$core.pragma('dart2js:noInline')
  static WorkItemValuesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemValuesResponse>(create);
  static WorkItemValuesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WorkItemValue> get workItemValues => $_getList(0);
}

class WorkItemValueGetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorkItemValueGetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auge.protobuf'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'workItemId')
    ..e<CustomWorkItemValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customWorkItemValue', $pb.PbFieldType.OE, defaultOrMaker: CustomWorkItemValue.workItemValueWithoutWorkItem, valueOf: CustomWorkItemValue.valueOf, enumValues: CustomWorkItemValue.values)
    ..hasRequiredFields = false
  ;

  WorkItemValueGetRequest._() : super();
  factory WorkItemValueGetRequest() => create();
  factory WorkItemValueGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkItemValueGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkItemValueGetRequest clone() => WorkItemValueGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkItemValueGetRequest copyWith(void Function(WorkItemValueGetRequest) updates) => super.copyWith((message) => updates(message as WorkItemValueGetRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorkItemValueGetRequest create() => WorkItemValueGetRequest._();
  WorkItemValueGetRequest createEmptyInstance() => create();
  static $pb.PbList<WorkItemValueGetRequest> createRepeated() => $pb.PbList<WorkItemValueGetRequest>();
  @$core.pragma('dart2js:noInline')
  static WorkItemValueGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkItemValueGetRequest>(create);
  static WorkItemValueGetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get workItemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set workItemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkItemId() => clearField(2);

  @$pb.TagNumber(3)
  CustomWorkItemValue get customWorkItemValue => $_getN(2);
  @$pb.TagNumber(3)
  set customWorkItemValue(CustomWorkItemValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCustomWorkItemValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomWorkItemValue() => clearField(3);
}

