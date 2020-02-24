///
//  Generated code. Do not modify.
//  source: work/work_work_item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'work_work_item.pb.dart' as $6;
import '../google/protobuf/wrappers.pb.dart' as $1;
import '../google/protobuf/empty.pb.dart' as $2;
export 'work_work_item.pb.dart';

class WorkServiceClient extends $grpc.Client {
  static final _$getWorks =
      $grpc.ClientMethod<$6.WorkGetRequest, $6.WorksResponse>(
          '/auge.protobuf.WorkService/GetWorks',
          ($6.WorkGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.WorksResponse.fromBuffer(value));
  static final _$getWork = $grpc.ClientMethod<$6.WorkGetRequest, $6.Work>(
      '/auge.protobuf.WorkService/GetWork',
      ($6.WorkGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.Work.fromBuffer(value));
  static final _$createWork =
      $grpc.ClientMethod<$6.WorkRequest, $1.StringValue>(
          '/auge.protobuf.WorkService/CreateWork',
          ($6.WorkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateWork = $grpc.ClientMethod<$6.WorkRequest, $2.Empty>(
      '/auge.protobuf.WorkService/UpdateWork',
      ($6.WorkRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteWork =
      $grpc.ClientMethod<$6.WorkDeleteRequest, $2.Empty>(
          '/auge.protobuf.WorkService/DeleteWork',
          ($6.WorkDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  WorkServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.WorksResponse> getWorks($6.WorkGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getWorks, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.Work> getWork($6.WorkGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getWork, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createWork($6.WorkRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createWork, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateWork($6.WorkRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWork, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteWork($6.WorkDeleteRequest request,
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
    $addMethod($grpc.ServiceMethod<$6.WorkGetRequest, $6.WorksResponse>(
        'GetWorks',
        getWorks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkGetRequest.fromBuffer(value),
        ($6.WorksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkGetRequest, $6.Work>(
        'GetWork',
        getWork_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkGetRequest.fromBuffer(value),
        ($6.Work value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkRequest, $1.StringValue>(
        'CreateWork',
        createWork_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkRequest, $2.Empty>(
        'UpdateWork',
        updateWork_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkDeleteRequest, $2.Empty>(
        'DeleteWork',
        deleteWork_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.WorksResponse> getWorks_Pre(
      $grpc.ServiceCall call, $async.Future<$6.WorkGetRequest> request) async {
    return getWorks(call, await request);
  }

  $async.Future<$6.Work> getWork_Pre(
      $grpc.ServiceCall call, $async.Future<$6.WorkGetRequest> request) async {
    return getWork(call, await request);
  }

  $async.Future<$1.StringValue> createWork_Pre(
      $grpc.ServiceCall call, $async.Future<$6.WorkRequest> request) async {
    return createWork(call, await request);
  }

  $async.Future<$2.Empty> updateWork_Pre(
      $grpc.ServiceCall call, $async.Future<$6.WorkRequest> request) async {
    return updateWork(call, await request);
  }

  $async.Future<$2.Empty> deleteWork_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkDeleteRequest> request) async {
    return deleteWork(call, await request);
  }

  $async.Future<$6.WorksResponse> getWorks(
      $grpc.ServiceCall call, $6.WorkGetRequest request);
  $async.Future<$6.Work> getWork(
      $grpc.ServiceCall call, $6.WorkGetRequest request);
  $async.Future<$1.StringValue> createWork(
      $grpc.ServiceCall call, $6.WorkRequest request);
  $async.Future<$2.Empty> updateWork(
      $grpc.ServiceCall call, $6.WorkRequest request);
  $async.Future<$2.Empty> deleteWork(
      $grpc.ServiceCall call, $6.WorkDeleteRequest request);
}

class WorkItemServiceClient extends $grpc.Client {
  static final _$getWorkItems =
      $grpc.ClientMethod<$6.WorkItemGetRequest, $6.WorkItemsResponse>(
          '/auge.protobuf.WorkItemService/GetWorkItems',
          ($6.WorkItemGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.WorkItemsResponse.fromBuffer(value));
  static final _$getWorkItem =
      $grpc.ClientMethod<$6.WorkItemGetRequest, $6.WorkItem>(
          '/auge.protobuf.WorkItemService/GetWorkItem',
          ($6.WorkItemGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.WorkItem.fromBuffer(value));
  static final _$createWorkItem =
      $grpc.ClientMethod<$6.WorkItemRequest, $1.StringValue>(
          '/auge.protobuf.WorkItemService/CreateWorkItem',
          ($6.WorkItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateWorkItem =
      $grpc.ClientMethod<$6.WorkItemRequest, $2.Empty>(
          '/auge.protobuf.WorkItemService/UpdateWorkItem',
          ($6.WorkItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteWorkItem =
      $grpc.ClientMethod<$6.WorkItemDeleteRequest, $2.Empty>(
          '/auge.protobuf.WorkItemService/DeleteWorkItem',
          ($6.WorkItemDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$getWorkItemAttachment = $grpc.ClientMethod<
          $6.WorkItemAttachmentGetRequest, $6.WorkItemAttachment>(
      '/auge.protobuf.WorkItemService/GetWorkItemAttachment',
      ($6.WorkItemAttachmentGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.WorkItemAttachment.fromBuffer(value));
  static final _$getWorkItemCheckItems = $grpc.ClientMethod<
          $6.WorkItemCheckItemGetRequest, $6.WorkItemCheckItemsResponse>(
      '/auge.protobuf.WorkItemService/GetWorkItemCheckItems',
      ($6.WorkItemCheckItemGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.WorkItemCheckItemsResponse.fromBuffer(value));

  WorkItemServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.WorkItemsResponse> getWorkItems(
      $6.WorkItemGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItems, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.WorkItem> getWorkItem($6.WorkItemGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createWorkItem(
      $6.WorkItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createWorkItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateWorkItem($6.WorkItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWorkItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteWorkItem(
      $6.WorkItemDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteWorkItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.WorkItemAttachment> getWorkItemAttachment(
      $6.WorkItemAttachmentGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItemAttachment, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.WorkItemCheckItemsResponse> getWorkItemCheckItems(
      $6.WorkItemCheckItemGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkItemCheckItems, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class WorkItemServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.WorkItemService';

  WorkItemServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.WorkItemGetRequest, $6.WorkItemsResponse>(
        'GetWorkItems',
        getWorkItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.WorkItemGetRequest.fromBuffer(value),
        ($6.WorkItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkItemGetRequest, $6.WorkItem>(
        'GetWorkItem',
        getWorkItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.WorkItemGetRequest.fromBuffer(value),
        ($6.WorkItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkItemRequest, $1.StringValue>(
        'CreateWorkItem',
        createWorkItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkItemRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkItemRequest, $2.Empty>(
        'UpdateWorkItem',
        updateWorkItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkItemRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkItemDeleteRequest, $2.Empty>(
        'DeleteWorkItem',
        deleteWorkItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.WorkItemDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkItemAttachmentGetRequest,
            $6.WorkItemAttachment>(
        'GetWorkItemAttachment',
        getWorkItemAttachment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.WorkItemAttachmentGetRequest.fromBuffer(value),
        ($6.WorkItemAttachment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkItemCheckItemGetRequest,
            $6.WorkItemCheckItemsResponse>(
        'GetWorkItemCheckItems',
        getWorkItemCheckItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.WorkItemCheckItemGetRequest.fromBuffer(value),
        ($6.WorkItemCheckItemsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.WorkItemsResponse> getWorkItems_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkItemGetRequest> request) async {
    return getWorkItems(call, await request);
  }

  $async.Future<$6.WorkItem> getWorkItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkItemGetRequest> request) async {
    return getWorkItem(call, await request);
  }

  $async.Future<$1.StringValue> createWorkItem_Pre(
      $grpc.ServiceCall call, $async.Future<$6.WorkItemRequest> request) async {
    return createWorkItem(call, await request);
  }

  $async.Future<$2.Empty> updateWorkItem_Pre(
      $grpc.ServiceCall call, $async.Future<$6.WorkItemRequest> request) async {
    return updateWorkItem(call, await request);
  }

  $async.Future<$2.Empty> deleteWorkItem_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkItemDeleteRequest> request) async {
    return deleteWorkItem(call, await request);
  }

  $async.Future<$6.WorkItemAttachment> getWorkItemAttachment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.WorkItemAttachmentGetRequest> request) async {
    return getWorkItemAttachment(call, await request);
  }

  $async.Future<$6.WorkItemCheckItemsResponse> getWorkItemCheckItems_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.WorkItemCheckItemGetRequest> request) async {
    return getWorkItemCheckItems(call, await request);
  }

  $async.Future<$6.WorkItemsResponse> getWorkItems(
      $grpc.ServiceCall call, $6.WorkItemGetRequest request);
  $async.Future<$6.WorkItem> getWorkItem(
      $grpc.ServiceCall call, $6.WorkItemGetRequest request);
  $async.Future<$1.StringValue> createWorkItem(
      $grpc.ServiceCall call, $6.WorkItemRequest request);
  $async.Future<$2.Empty> updateWorkItem(
      $grpc.ServiceCall call, $6.WorkItemRequest request);
  $async.Future<$2.Empty> deleteWorkItem(
      $grpc.ServiceCall call, $6.WorkItemDeleteRequest request);
  $async.Future<$6.WorkItemAttachment> getWorkItemAttachment(
      $grpc.ServiceCall call, $6.WorkItemAttachmentGetRequest request);
  $async.Future<$6.WorkItemCheckItemsResponse> getWorkItemCheckItems(
      $grpc.ServiceCall call, $6.WorkItemCheckItemGetRequest request);
}

class WorkStageServiceClient extends $grpc.Client {
  static final _$getWorkStages =
      $grpc.ClientMethod<$6.WorkStageGetRequest, $6.WorkStagesResponse>(
          '/auge.protobuf.WorkStageService/GetWorkStages',
          ($6.WorkStageGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.WorkStagesResponse.fromBuffer(value));
  static final _$getWorkStage =
      $grpc.ClientMethod<$6.WorkStageGetRequest, $6.WorkStage>(
          '/auge.protobuf.WorkStageService/GetWorkStage',
          ($6.WorkStageGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.WorkStage.fromBuffer(value));
  static final _$createWorkStage =
      $grpc.ClientMethod<$6.WorkStageRequest, $1.StringValue>(
          '/auge.protobuf.WorkStageService/CreateWorkStage',
          ($6.WorkStageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateWorkStage =
      $grpc.ClientMethod<$6.WorkStageRequest, $2.Empty>(
          '/auge.protobuf.WorkStageService/UpdateWorkStage',
          ($6.WorkStageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteWorkStage =
      $grpc.ClientMethod<$6.WorkStageDeleteRequest, $2.Empty>(
          '/auge.protobuf.WorkStageService/DeleteWorkStage',
          ($6.WorkStageDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  WorkStageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.WorkStagesResponse> getWorkStages(
      $6.WorkStageGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkStages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.WorkStage> getWorkStage(
      $6.WorkStageGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getWorkStage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createWorkStage(
      $6.WorkStageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createWorkStage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateWorkStage($6.WorkStageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateWorkStage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteWorkStage(
      $6.WorkStageDeleteRequest request,
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
        $grpc.ServiceMethod<$6.WorkStageGetRequest, $6.WorkStagesResponse>(
            'GetWorkStages',
            getWorkStages_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.WorkStageGetRequest.fromBuffer(value),
            ($6.WorkStagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkStageGetRequest, $6.WorkStage>(
        'GetWorkStage',
        getWorkStage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.WorkStageGetRequest.fromBuffer(value),
        ($6.WorkStage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkStageRequest, $1.StringValue>(
        'CreateWorkStage',
        createWorkStage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkStageRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkStageRequest, $2.Empty>(
        'UpdateWorkStage',
        updateWorkStage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.WorkStageRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.WorkStageDeleteRequest, $2.Empty>(
        'DeleteWorkStage',
        deleteWorkStage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.WorkStageDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.WorkStagesResponse> getWorkStages_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkStageGetRequest> request) async {
    return getWorkStages(call, await request);
  }

  $async.Future<$6.WorkStage> getWorkStage_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkStageGetRequest> request) async {
    return getWorkStage(call, await request);
  }

  $async.Future<$1.StringValue> createWorkStage_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkStageRequest> request) async {
    return createWorkStage(call, await request);
  }

  $async.Future<$2.Empty> updateWorkStage_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkStageRequest> request) async {
    return updateWorkStage(call, await request);
  }

  $async.Future<$2.Empty> deleteWorkStage_Pre($grpc.ServiceCall call,
      $async.Future<$6.WorkStageDeleteRequest> request) async {
    return deleteWorkStage(call, await request);
  }

  $async.Future<$6.WorkStagesResponse> getWorkStages(
      $grpc.ServiceCall call, $6.WorkStageGetRequest request);
  $async.Future<$6.WorkStage> getWorkStage(
      $grpc.ServiceCall call, $6.WorkStageGetRequest request);
  $async.Future<$1.StringValue> createWorkStage(
      $grpc.ServiceCall call, $6.WorkStageRequest request);
  $async.Future<$2.Empty> updateWorkStage(
      $grpc.ServiceCall call, $6.WorkStageRequest request);
  $async.Future<$2.Empty> deleteWorkStage(
      $grpc.ServiceCall call, $6.WorkStageDeleteRequest request);
}
