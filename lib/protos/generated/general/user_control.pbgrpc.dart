///
//  Generated code. Do not modify.
//  source: general/user_control.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user_control.pb.dart' as $4;
import '../google/protobuf/empty.pb.dart' as $2;
export 'user_control.pb.dart';

class UserControlServiceClient extends $grpc.Client {
  static final _$getUserControl =
      $grpc.ClientMethod<$4.UserControlGetRequest, $4.UserControl>(
          '/auge.protobuf.UserControlService/GetUserControl',
          ($4.UserControlGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.UserControl.fromBuffer(value));
  static final _$createOrUpdateUserControl =
      $grpc.ClientMethod<$4.UserControlRequest, $2.Empty>(
          '/auge.protobuf.UserControlService/CreateOrUpdateUserControl',
          ($4.UserControlRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteUserControl =
      $grpc.ClientMethod<$4.UserControlDeleteRequest, $2.Empty>(
          '/auge.protobuf.UserControlService/DeleteUserControl',
          ($4.UserControlDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  UserControlServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.UserControl> getUserControl(
      $4.UserControlGetRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getUserControl, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> createOrUpdateUserControl(
      $4.UserControlRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$createOrUpdateUserControl, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteUserControl(
      $4.UserControlDeleteRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deleteUserControl, request, options: options);
  }
}

abstract class UserControlServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.UserControlService';

  UserControlServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.UserControlGetRequest, $4.UserControl>(
        'GetUserControl',
        getUserControl_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UserControlGetRequest.fromBuffer(value),
        ($4.UserControl value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UserControlRequest, $2.Empty>(
        'CreateOrUpdateUserControl',
        createOrUpdateUserControl_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UserControlRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UserControlDeleteRequest, $2.Empty>(
        'DeleteUserControl',
        deleteUserControl_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.UserControlDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.UserControl> getUserControl_Pre($grpc.ServiceCall call,
      $async.Future<$4.UserControlGetRequest> request) async {
    return getUserControl(call, await request);
  }

  $async.Future<$2.Empty> createOrUpdateUserControl_Pre($grpc.ServiceCall call,
      $async.Future<$4.UserControlRequest> request) async {
    return createOrUpdateUserControl(call, await request);
  }

  $async.Future<$2.Empty> deleteUserControl_Pre($grpc.ServiceCall call,
      $async.Future<$4.UserControlDeleteRequest> request) async {
    return deleteUserControl(call, await request);
  }

  $async.Future<$4.UserControl> getUserControl(
      $grpc.ServiceCall call, $4.UserControlGetRequest request);
  $async.Future<$2.Empty> createOrUpdateUserControl(
      $grpc.ServiceCall call, $4.UserControlRequest request);
  $async.Future<$2.Empty> deleteUserControl(
      $grpc.ServiceCall call, $4.UserControlDeleteRequest request);
}
