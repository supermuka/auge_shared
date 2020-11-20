///
//  Generated code. Do not modify.
//  source: general/group.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'group.pb.dart' as $4;
import '../google/protobuf/wrappers.pb.dart' as $1;
import '../google/protobuf/empty.pb.dart' as $2;
export 'group.pb.dart';

class GroupServiceClient extends $grpc.Client {
  static final _$getGroups =
      $grpc.ClientMethod<$4.GroupGetRequest, $4.GroupsResponse>(
          '/auge.protobuf.GroupService/GetGroups',
          ($4.GroupGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.GroupsResponse.fromBuffer(value));
  static final _$createGroup =
      $grpc.ClientMethod<$4.GroupRequest, $1.StringValue>(
          '/auge.protobuf.GroupService/CreateGroup',
          ($4.GroupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateGroup = $grpc.ClientMethod<$4.GroupRequest, $2.Empty>(
      '/auge.protobuf.GroupService/UpdateGroup',
      ($4.GroupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteGroup =
      $grpc.ClientMethod<$4.GroupDeleteRequest, $2.Empty>(
          '/auge.protobuf.GroupService/DeleteGroup',
          ($4.GroupDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  GroupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.GroupsResponse> getGroups($4.GroupGetRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getGroups, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> createGroup($4.GroupRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updateGroup($4.GroupRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateGroup, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteGroup($4.GroupDeleteRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deleteGroup, request, options: options);
  }
}

abstract class GroupServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.GroupService';

  GroupServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GroupGetRequest, $4.GroupsResponse>(
        'GetGroups',
        getGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GroupGetRequest.fromBuffer(value),
        ($4.GroupsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GroupRequest, $1.StringValue>(
        'CreateGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GroupRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GroupRequest, $2.Empty>(
        'UpdateGroup',
        updateGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GroupRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GroupDeleteRequest, $2.Empty>(
        'DeleteGroup',
        deleteGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GroupDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.GroupsResponse> getGroups_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GroupGetRequest> request) async {
    return getGroups(call, await request);
  }

  $async.Future<$1.StringValue> createGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GroupRequest> request) async {
    return createGroup(call, await request);
  }

  $async.Future<$2.Empty> updateGroup_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GroupRequest> request) async {
    return updateGroup(call, await request);
  }

  $async.Future<$2.Empty> deleteGroup_Pre($grpc.ServiceCall call,
      $async.Future<$4.GroupDeleteRequest> request) async {
    return deleteGroup(call, await request);
  }

  $async.Future<$4.GroupsResponse> getGroups(
      $grpc.ServiceCall call, $4.GroupGetRequest request);
  $async.Future<$1.StringValue> createGroup(
      $grpc.ServiceCall call, $4.GroupRequest request);
  $async.Future<$2.Empty> updateGroup(
      $grpc.ServiceCall call, $4.GroupRequest request);
  $async.Future<$2.Empty> deleteGroup(
      $grpc.ServiceCall call, $4.GroupDeleteRequest request);
}
