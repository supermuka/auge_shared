///
//  Generated code. Do not modify.
//  source: work/work_work_item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'work_work_item.pb.dart' as $7;
import '../google/protobuf/wrappers.pb.dart' as $1;
import '../google/protobuf/empty.pb.dart' as $2;
export 'work_work_item.pb.dart';

class WorkServiceClient extends $grpc.Client {
  static final _$getWorks =
      $grpc.ClientMethod<$7.WorkGetRequest, $7.WorksResponse>(
          '/auge.protobuf.WorkService/GetWorks',
          ($7.WorkGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.WorksResponse.fromBuffer(value));
  static final _$createWork =
      $grpc.ClientMethod<$7.WorkRequest, $1.StringValue>(
          '/auge.protobuf.WorkService/CreateWork',
          ($7.WorkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateWork = $grpc.ClientMethod<$7.WorkRequest, $2.Empty>(
      '/auge.protobuf.WorkService/UpdateWork',
      ($7.WorkRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteWork =
      $grpc.ClientMethod<$7.WorkDeleteRequest, $2.Empty>(
          '/auge.protobuf.WorkService/DeleteWork',
          ($7.WorkDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  WorkServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$7.WorksResponse> getWorks($7.WorkGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getWorks, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createWork($7.WorkRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createWork, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateWork($7.WorkRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWork, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteWork($7.WorkDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteWork, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class WorkServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.WorkService';

  WorkServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.WorkGetRequest, $7.WorksResponse>(
        'GetWorks',
        getWorks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkGetRequest.fromBuffer(value),
        ($7.WorksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkRequest, $1.StringValue>(
        'CreateWork',
        createWork_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkRequest, $2.Empty>(
        'UpdateWork',
        updateWork_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkDeleteRequest, $2.Empty>(
        'DeleteWork',
        deleteWork_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$7.WorksResponse> getWorks_Pre(
      $grpc.ServiceCall call, $async.Future<$7.WorkGetRequest> request) async {
    return getWorks(call, await request);
  }

  $async.Future<$1.StringValue> createWork_Pre(
      $grpc.ServiceCall call, $async.Future<$7.WorkRequest> request) async {
    return createWork(call, await request);
  }

  $async.Future<$2.Empty> updateWork_Pre(
      $grpc.ServiceCall call, $async.Future<$7.WorkRequest> request) async {
    return updateWork(call, await request);
  }

  $async.Future<$2.Empty> deleteWork_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkDeleteRequest> request) async {
    return deleteWork(call, await request);
  }

  $async.Future<$7.WorksResponse> getWorks(
      $grpc.ServiceCall call, $7.WorkGetRequest request);
  $async.Future<$1.StringValue> createWork(
      $grpc.ServiceCall call, $7.WorkRequest request);
  $async.Future<$2.Empty> updateWork(
      $grpc.ServiceCall call, $7.WorkRequest request);
  $async.Future<$2.Empty> deleteWork(
      $grpc.ServiceCall call, $7.WorkDeleteRequest request);
}

class WorkItemServiceClient extends $grpc.Client {
  static final _$getWorkItems =
      $grpc.ClientMethod<$7.WorkItemGetRequest, $7.WorkItemsResponse>(
          '/auge.protobuf.WorkItemService/GetWorkItems',
          ($7.WorkItemGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.WorkItemsResponse.fromBuffer(value));
  static final _$createWorkItem =
      $grpc.ClientMethod<$7.WorkItemRequest, $1.StringValue>(
          '/auge.protobuf.WorkItemService/CreateWorkItem',
          ($7.WorkItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateWorkItem =
      $grpc.ClientMethod<$7.WorkItemRequest, $2.Empty>(
          '/auge.protobuf.WorkItemService/UpdateWorkItem',
          ($7.WorkItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteWorkItem =
      $grpc.ClientMethod<$7.WorkItemDeleteRequest, $2.Empty>(
          '/auge.protobuf.WorkItemService/DeleteWorkItem',
          ($7.WorkItemDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$getWorkItemAttachment = $grpc.ClientMethod<
          $7.WorkItemAttachmentGetRequest, $7.WorkItemAttachment>(
      '/auge.protobuf.WorkItemService/GetWorkItemAttachment',
      ($7.WorkItemAttachmentGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.WorkItemAttachment.fromBuffer(value));
  static final _$getWorkItemCheckItems = $grpc.ClientMethod<
          $7.WorkItemCheckItemGetRequest, $7.WorkItemCheckItemsResponse>(
      '/auge.protobuf.WorkItemService/GetWorkItemCheckItems',
      ($7.WorkItemCheckItemGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.WorkItemCheckItemsResponse.fromBuffer(value));
  static final _$getWorkItemValues =
      $grpc.ClientMethod<$7.WorkItemValueGetRequest, $7.WorkItemValuesResponse>(
          '/auge.protobuf.WorkItemService/GetWorkItemValues',
          ($7.WorkItemValueGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.WorkItemValuesResponse.fromBuffer(value));
  static final _$getWorkItemValue =
      $grpc.ClientMethod<$7.WorkItemValueGetRequest, $7.WorkItemValue>(
          '/auge.protobuf.WorkItemService/GetWorkItemValue',
          ($7.WorkItemValueGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.WorkItemValue.fromBuffer(value));
  static final _$createWorkItemValue =
      $grpc.ClientMethod<$7.WorkItemValueRequest, $1.StringValue>(
          '/auge.protobuf.WorkItemService/CreateWorkItemValue',
          ($7.WorkItemValueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateWorkItemValue =
      $grpc.ClientMethod<$7.WorkItemValueRequest, $2.Empty>(
          '/auge.protobuf.WorkItemService/UpdateWorkItemValue',
          ($7.WorkItemValueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteWorkItemValue =
      $grpc.ClientMethod<$7.WorkItemValueDeleteRequest, $2.Empty>(
          '/auge.protobuf.WorkItemService/DeleteWorkItemValue',
          ($7.WorkItemValueDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  WorkItemServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$7.WorkItemsResponse> getWorkItems(
      $7.WorkItemGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItems, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createWorkItem(
      $7.WorkItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createWorkItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateWorkItem($7.WorkItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWorkItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteWorkItem(
      $7.WorkItemDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteWorkItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.WorkItemAttachment> getWorkItemAttachment(
      $7.WorkItemAttachmentGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItemAttachment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.WorkItemCheckItemsResponse> getWorkItemCheckItems(
      $7.WorkItemCheckItemGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItemCheckItems, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.WorkItemValuesResponse> getWorkItemValues(
      $7.WorkItemValueGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItemValues, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$7.WorkItemValue> getWorkItemValue(
      $7.WorkItemValueGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItemValue, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createWorkItemValue(
      $7.WorkItemValueRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createWorkItemValue, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateWorkItemValue(
      $7.WorkItemValueRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWorkItemValue, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteWorkItemValue(
      $7.WorkItemValueDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteWorkItemValue, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class WorkItemServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.WorkItemService';

  WorkItemServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.WorkItemGetRequest, $7.WorkItemsResponse>(
        'GetWorkItems',
        getWorkItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemGetRequest.fromBuffer(value),
        ($7.WorkItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemRequest, $1.StringValue>(
        'CreateWorkItem',
        createWorkItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkItemRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemRequest, $2.Empty>(
        'UpdateWorkItem',
        updateWorkItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkItemRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemDeleteRequest, $2.Empty>(
        'DeleteWorkItem',
        deleteWorkItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemAttachmentGetRequest,
            $7.WorkItemAttachment>(
        'GetWorkItemAttachment',
        getWorkItemAttachment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemAttachmentGetRequest.fromBuffer(value),
        ($7.WorkItemAttachment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemCheckItemGetRequest,
            $7.WorkItemCheckItemsResponse>(
        'GetWorkItemCheckItems',
        getWorkItemCheckItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemCheckItemGetRequest.fromBuffer(value),
        ($7.WorkItemCheckItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemValueGetRequest,
            $7.WorkItemValuesResponse>(
        'GetWorkItemValues',
        getWorkItemValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemValueGetRequest.fromBuffer(value),
        ($7.WorkItemValuesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.WorkItemValueGetRequest, $7.WorkItemValue>(
            'GetWorkItemValue',
            getWorkItemValue_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.WorkItemValueGetRequest.fromBuffer(value),
            ($7.WorkItemValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemValueRequest, $1.StringValue>(
        'CreateWorkItemValue',
        createWorkItemValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemValueRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemValueRequest, $2.Empty>(
        'UpdateWorkItemValue',
        updateWorkItemValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemValueRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkItemValueDeleteRequest, $2.Empty>(
        'DeleteWorkItemValue',
        deleteWorkItemValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkItemValueDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$7.WorkItemsResponse> getWorkItems_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkItemGetRequest> request) async {
    return getWorkItems(call, await request);
  }

  $async.Future<$1.StringValue> createWorkItem_Pre(
      $grpc.ServiceCall call, $async.Future<$7.WorkItemRequest> request) async {
    return createWorkItem(call, await request);
  }

  $async.Future<$2.Empty> updateWorkItem_Pre(
      $grpc.ServiceCall call, $async.Future<$7.WorkItemRequest> request) async {
    return updateWorkItem(call, await request);
  }

  $async.Future<$2.Empty> deleteWorkItem_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkItemDeleteRequest> request) async {
    return deleteWorkItem(call, await request);
  }

  $async.Future<$7.WorkItemAttachment> getWorkItemAttachment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.WorkItemAttachmentGetRequest> request) async {
    return getWorkItemAttachment(call, await request);
  }

  $async.Future<$7.WorkItemCheckItemsResponse> getWorkItemCheckItems_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.WorkItemCheckItemGetRequest> request) async {
    return getWorkItemCheckItems(call, await request);
  }

  $async.Future<$7.WorkItemValuesResponse> getWorkItemValues_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.WorkItemValueGetRequest> request) async {
    return getWorkItemValues(call, await request);
  }

  $async.Future<$7.WorkItemValue> getWorkItemValue_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkItemValueGetRequest> request) async {
    return getWorkItemValue(call, await request);
  }

  $async.Future<$1.StringValue> createWorkItemValue_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkItemValueRequest> request) async {
    return createWorkItemValue(call, await request);
  }

  $async.Future<$2.Empty> updateWorkItemValue_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkItemValueRequest> request) async {
    return updateWorkItemValue(call, await request);
  }

  $async.Future<$2.Empty> deleteWorkItemValue_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkItemValueDeleteRequest> request) async {
    return deleteWorkItemValue(call, await request);
  }

  $async.Future<$7.WorkItemsResponse> getWorkItems(
      $grpc.ServiceCall call, $7.WorkItemGetRequest request);
  $async.Future<$1.StringValue> createWorkItem(
      $grpc.ServiceCall call, $7.WorkItemRequest request);
  $async.Future<$2.Empty> updateWorkItem(
      $grpc.ServiceCall call, $7.WorkItemRequest request);
  $async.Future<$2.Empty> deleteWorkItem(
      $grpc.ServiceCall call, $7.WorkItemDeleteRequest request);
  $async.Future<$7.WorkItemAttachment> getWorkItemAttachment(
      $grpc.ServiceCall call, $7.WorkItemAttachmentGetRequest request);
  $async.Future<$7.WorkItemCheckItemsResponse> getWorkItemCheckItems(
      $grpc.ServiceCall call, $7.WorkItemCheckItemGetRequest request);
  $async.Future<$7.WorkItemValuesResponse> getWorkItemValues(
      $grpc.ServiceCall call, $7.WorkItemValueGetRequest request);
  $async.Future<$7.WorkItemValue> getWorkItemValue(
      $grpc.ServiceCall call, $7.WorkItemValueGetRequest request);
  $async.Future<$1.StringValue> createWorkItemValue(
      $grpc.ServiceCall call, $7.WorkItemValueRequest request);
  $async.Future<$2.Empty> updateWorkItemValue(
      $grpc.ServiceCall call, $7.WorkItemValueRequest request);
  $async.Future<$2.Empty> deleteWorkItemValue(
      $grpc.ServiceCall call, $7.WorkItemValueDeleteRequest request);
}

class WorkStageServiceClient extends $grpc.Client {
  static final _$getWorkStages =
      $grpc.ClientMethod<$7.WorkStageGetRequest, $7.WorkStagesResponse>(
          '/auge.protobuf.WorkStageService/GetWorkStages',
          ($7.WorkStageGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.WorkStagesResponse.fromBuffer(value));
  static final _$createWorkStage =
      $grpc.ClientMethod<$7.WorkStageRequest, $1.StringValue>(
          '/auge.protobuf.WorkStageService/CreateWorkStage',
          ($7.WorkStageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateWorkStage =
      $grpc.ClientMethod<$7.WorkStageRequest, $2.Empty>(
          '/auge.protobuf.WorkStageService/UpdateWorkStage',
          ($7.WorkStageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteWorkStage =
      $grpc.ClientMethod<$7.WorkStageDeleteRequest, $2.Empty>(
          '/auge.protobuf.WorkStageService/DeleteWorkStage',
          ($7.WorkStageDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  WorkStageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$7.WorkStagesResponse> getWorkStages(
      $7.WorkStageGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkStages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createWorkStage(
      $7.WorkStageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createWorkStage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateWorkStage($7.WorkStageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWorkStage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteWorkStage(
      $7.WorkStageDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteWorkStage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class WorkStageServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.WorkStageService';

  WorkStageServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$7.WorkStageGetRequest, $7.WorkStagesResponse>(
            'GetWorkStages',
            getWorkStages_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.WorkStageGetRequest.fromBuffer(value),
            ($7.WorkStagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkStageRequest, $1.StringValue>(
        'CreateWorkStage',
        createWorkStage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkStageRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkStageRequest, $2.Empty>(
        'UpdateWorkStage',
        updateWorkStage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.WorkStageRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.WorkStageDeleteRequest, $2.Empty>(
        'DeleteWorkStage',
        deleteWorkStage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.WorkStageDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$7.WorkStagesResponse> getWorkStages_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkStageGetRequest> request) async {
    return getWorkStages(call, await request);
  }

  $async.Future<$1.StringValue> createWorkStage_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkStageRequest> request) async {
    return createWorkStage(call, await request);
  }

  $async.Future<$2.Empty> updateWorkStage_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkStageRequest> request) async {
    return updateWorkStage(call, await request);
  }

  $async.Future<$2.Empty> deleteWorkStage_Pre($grpc.ServiceCall call,
      $async.Future<$7.WorkStageDeleteRequest> request) async {
    return deleteWorkStage(call, await request);
  }

  $async.Future<$7.WorkStagesResponse> getWorkStages(
      $grpc.ServiceCall call, $7.WorkStageGetRequest request);
  $async.Future<$1.StringValue> createWorkStage(
      $grpc.ServiceCall call, $7.WorkStageRequest request);
  $async.Future<$2.Empty> updateWorkStage(
      $grpc.ServiceCall call, $7.WorkStageRequest request);
  $async.Future<$2.Empty> deleteWorkStage(
      $grpc.ServiceCall call, $7.WorkStageDeleteRequest request);
}
