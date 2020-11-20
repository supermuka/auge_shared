///
//  Generated code. Do not modify.
//  source: general/history_item.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'history_item.pb.dart' as $4;
import '../google/protobuf/wrappers.pb.dart' as $1;
export 'history_item.pb.dart';

class HistoryItemServiceClient extends $grpc.Client {
  static final _$getHistory =
      $grpc.ClientMethod<$4.HistoryItemGetRequest, $4.HistoryResponse>(
          '/auge.protobuf.HistoryItemService/GetHistory',
          ($4.HistoryItemGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.HistoryResponse.fromBuffer(value));
  static final _$getHistoryCount =
      $grpc.ClientMethod<$4.HistoryCountGetRequest, $1.Int32Value>(
          '/auge.protobuf.HistoryItemService/GetHistoryCount',
          ($4.HistoryCountGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Int32Value.fromBuffer(value));

  HistoryItemServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.HistoryResponse> getHistory(
      $4.HistoryItemGetRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getHistory, request, options: options);
  }

  $grpc.ResponseFuture<$1.Int32Value> getHistoryCount(
      $4.HistoryCountGetRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getHistoryCount, request, options: options);
  }
}

abstract class HistoryItemServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.HistoryItemService';

  HistoryItemServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.HistoryItemGetRequest, $4.HistoryResponse>(
            'GetHistory',
            getHistory_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.HistoryItemGetRequest.fromBuffer(value),
            ($4.HistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.HistoryCountGetRequest, $1.Int32Value>(
        'GetHistoryCount',
        getHistoryCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.HistoryCountGetRequest.fromBuffer(value),
        ($1.Int32Value value) => value.writeToBuffer()));
  }

  $async.Future<$4.HistoryResponse> getHistory_Pre($grpc.ServiceCall call,
      $async.Future<$4.HistoryItemGetRequest> request) async {
    return getHistory(call, await request);
  }

  $async.Future<$1.Int32Value> getHistoryCount_Pre($grpc.ServiceCall call,
      $async.Future<$4.HistoryCountGetRequest> request) async {
    return getHistoryCount(call, await request);
  }

  $async.Future<$4.HistoryResponse> getHistory(
      $grpc.ServiceCall call, $4.HistoryItemGetRequest request);
  $async.Future<$1.Int32Value> getHistoryCount(
      $grpc.ServiceCall call, $4.HistoryCountGetRequest request);
}
