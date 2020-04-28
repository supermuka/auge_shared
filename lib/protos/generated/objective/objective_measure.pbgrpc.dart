///
//  Generated code. Do not modify.
//  source: objective/objective_measure.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'objective_measure.pb.dart' as $6;
import '../google/protobuf/wrappers.pb.dart' as $1;
import '../google/protobuf/empty.pb.dart' as $2;
export 'objective_measure.pb.dart';

class ObjectiveServiceClient extends $grpc.Client {
  static final _$getObjectives =
      $grpc.ClientMethod<$6.ObjectiveGetRequest, $6.ObjectivesResponse>(
          '/auge.protobuf.ObjectiveService/GetObjectives',
          ($6.ObjectiveGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ObjectivesResponse.fromBuffer(value));
  static final _$getObjective =
      $grpc.ClientMethod<$6.ObjectiveGetRequest, $6.Objective>(
          '/auge.protobuf.ObjectiveService/GetObjective',
          ($6.ObjectiveGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.Objective.fromBuffer(value));
  static final _$createObjective =
      $grpc.ClientMethod<$6.ObjectiveRequest, $1.StringValue>(
          '/auge.protobuf.ObjectiveService/CreateObjective',
          ($6.ObjectiveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateObjective =
      $grpc.ClientMethod<$6.ObjectiveRequest, $2.Empty>(
          '/auge.protobuf.ObjectiveService/UpdateObjective',
          ($6.ObjectiveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteObjective =
      $grpc.ClientMethod<$6.ObjectiveDeleteRequest, $2.Empty>(
          '/auge.protobuf.ObjectiveService/DeleteObjective',
          ($6.ObjectiveDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  ObjectiveServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.ObjectivesResponse> getObjectives(
      $6.ObjectiveGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getObjectives, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.Objective> getObjective(
      $6.ObjectiveGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getObjective, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createObjective(
      $6.ObjectiveRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createObjective, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateObjective($6.ObjectiveRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateObjective, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteObjective(
      $6.ObjectiveDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteObjective, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ObjectiveServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.ObjectiveService';

  ObjectiveServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$6.ObjectiveGetRequest, $6.ObjectivesResponse>(
            'GetObjectives',
            getObjectives_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.ObjectiveGetRequest.fromBuffer(value),
            ($6.ObjectivesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ObjectiveGetRequest, $6.Objective>(
        'GetObjective',
        getObjective_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ObjectiveGetRequest.fromBuffer(value),
        ($6.Objective value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ObjectiveRequest, $1.StringValue>(
        'CreateObjective',
        createObjective_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ObjectiveRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ObjectiveRequest, $2.Empty>(
        'UpdateObjective',
        updateObjective_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ObjectiveRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ObjectiveDeleteRequest, $2.Empty>(
        'DeleteObjective',
        deleteObjective_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ObjectiveDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.ObjectivesResponse> getObjectives_Pre($grpc.ServiceCall call,
      $async.Future<$6.ObjectiveGetRequest> request) async {
    return getObjectives(call, await request);
  }

  $async.Future<$6.Objective> getObjective_Pre($grpc.ServiceCall call,
      $async.Future<$6.ObjectiveGetRequest> request) async {
    return getObjective(call, await request);
  }

  $async.Future<$1.StringValue> createObjective_Pre($grpc.ServiceCall call,
      $async.Future<$6.ObjectiveRequest> request) async {
    return createObjective(call, await request);
  }

  $async.Future<$2.Empty> updateObjective_Pre($grpc.ServiceCall call,
      $async.Future<$6.ObjectiveRequest> request) async {
    return updateObjective(call, await request);
  }

  $async.Future<$2.Empty> deleteObjective_Pre($grpc.ServiceCall call,
      $async.Future<$6.ObjectiveDeleteRequest> request) async {
    return deleteObjective(call, await request);
  }

  $async.Future<$6.ObjectivesResponse> getObjectives(
      $grpc.ServiceCall call, $6.ObjectiveGetRequest request);
  $async.Future<$6.Objective> getObjective(
      $grpc.ServiceCall call, $6.ObjectiveGetRequest request);
  $async.Future<$1.StringValue> createObjective(
      $grpc.ServiceCall call, $6.ObjectiveRequest request);
  $async.Future<$2.Empty> updateObjective(
      $grpc.ServiceCall call, $6.ObjectiveRequest request);
  $async.Future<$2.Empty> deleteObjective(
      $grpc.ServiceCall call, $6.ObjectiveDeleteRequest request);
}

class MeasureServiceClient extends $grpc.Client {
  static final _$getMeasures =
      $grpc.ClientMethod<$6.MeasureGetRequest, $6.MeasuresResponse>(
          '/auge.protobuf.MeasureService/GetMeasures',
          ($6.MeasureGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.MeasuresResponse.fromBuffer(value));
  static final _$getMeasure =
      $grpc.ClientMethod<$6.MeasureGetRequest, $6.Measure>(
          '/auge.protobuf.MeasureService/GetMeasure',
          ($6.MeasureGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.Measure.fromBuffer(value));
  static final _$createMeasure =
      $grpc.ClientMethod<$6.MeasureRequest, $1.StringValue>(
          '/auge.protobuf.MeasureService/CreateMeasure',
          ($6.MeasureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateMeasure =
      $grpc.ClientMethod<$6.MeasureRequest, $2.Empty>(
          '/auge.protobuf.MeasureService/UpdateMeasure',
          ($6.MeasureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteMeasure =
      $grpc.ClientMethod<$6.MeasureDeleteRequest, $2.Empty>(
          '/auge.protobuf.MeasureService/DeleteMeasure',
          ($6.MeasureDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$getMeasureProgresses = $grpc.ClientMethod<
          $6.MeasureProgressGetRequest, $6.MeasureProgressesResponse>(
      '/auge.protobuf.MeasureService/GetMeasureProgresses',
      ($6.MeasureProgressGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.MeasureProgressesResponse.fromBuffer(value));
  static final _$getMeasureProgress =
      $grpc.ClientMethod<$6.MeasureProgressGetRequest, $6.MeasureProgress>(
          '/auge.protobuf.MeasureService/GetMeasureProgress',
          ($6.MeasureProgressGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.MeasureProgress.fromBuffer(value));
  static final _$createMeasureProgress =
      $grpc.ClientMethod<$6.MeasureProgressRequest, $1.StringValue>(
          '/auge.protobuf.MeasureService/CreateMeasureProgress',
          ($6.MeasureProgressRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateMeasureProgress =
      $grpc.ClientMethod<$6.MeasureProgressRequest, $2.Empty>(
          '/auge.protobuf.MeasureService/UpdateMeasureProgress',
          ($6.MeasureProgressRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteMeasureProgress =
      $grpc.ClientMethod<$6.MeasureProgressDeleteRequest, $2.Empty>(
          '/auge.protobuf.MeasureService/DeleteMeasureProgress',
          ($6.MeasureProgressDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  MeasureServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$6.MeasuresResponse> getMeasures(
      $6.MeasureGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getMeasures, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.Measure> getMeasure($6.MeasureGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getMeasure, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createMeasure($6.MeasureRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createMeasure, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateMeasure($6.MeasureRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateMeasure, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteMeasure($6.MeasureDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteMeasure, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.MeasureProgressesResponse> getMeasureProgresses(
      $6.MeasureProgressGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getMeasureProgresses, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$6.MeasureProgress> getMeasureProgress(
      $6.MeasureProgressGetRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getMeasureProgress, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.StringValue> createMeasureProgress(
      $6.MeasureProgressRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createMeasureProgress, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> updateMeasureProgress(
      $6.MeasureProgressRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateMeasureProgress, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.Empty> deleteMeasureProgress(
      $6.MeasureProgressDeleteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteMeasureProgress, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MeasureServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.MeasureService';

  MeasureServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.MeasureGetRequest, $6.MeasuresResponse>(
        'GetMeasures',
        getMeasures_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.MeasureGetRequest.fromBuffer(value),
        ($6.MeasuresResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureGetRequest, $6.Measure>(
        'GetMeasure',
        getMeasure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.MeasureGetRequest.fromBuffer(value),
        ($6.Measure value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureRequest, $1.StringValue>(
        'CreateMeasure',
        createMeasure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.MeasureRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureRequest, $2.Empty>(
        'UpdateMeasure',
        updateMeasure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.MeasureRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureDeleteRequest, $2.Empty>(
        'DeleteMeasure',
        deleteMeasure_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.MeasureDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureProgressGetRequest,
            $6.MeasureProgressesResponse>(
        'GetMeasureProgresses',
        getMeasureProgresses_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.MeasureProgressGetRequest.fromBuffer(value),
        ($6.MeasureProgressesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.MeasureProgressGetRequest, $6.MeasureProgress>(
            'GetMeasureProgress',
            getMeasureProgress_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.MeasureProgressGetRequest.fromBuffer(value),
            ($6.MeasureProgress value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureProgressRequest, $1.StringValue>(
        'CreateMeasureProgress',
        createMeasureProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.MeasureProgressRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureProgressRequest, $2.Empty>(
        'UpdateMeasureProgress',
        updateMeasureProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.MeasureProgressRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.MeasureProgressDeleteRequest, $2.Empty>(
        'DeleteMeasureProgress',
        deleteMeasureProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.MeasureProgressDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.MeasuresResponse> getMeasures_Pre($grpc.ServiceCall call,
      $async.Future<$6.MeasureGetRequest> request) async {
    return getMeasures(call, await request);
  }

  $async.Future<$6.Measure> getMeasure_Pre($grpc.ServiceCall call,
      $async.Future<$6.MeasureGetRequest> request) async {
    return getMeasure(call, await request);
  }

  $async.Future<$1.StringValue> createMeasure_Pre(
      $grpc.ServiceCall call, $async.Future<$6.MeasureRequest> request) async {
    return createMeasure(call, await request);
  }

  $async.Future<$2.Empty> updateMeasure_Pre(
      $grpc.ServiceCall call, $async.Future<$6.MeasureRequest> request) async {
    return updateMeasure(call, await request);
  }

  $async.Future<$2.Empty> deleteMeasure_Pre($grpc.ServiceCall call,
      $async.Future<$6.MeasureDeleteRequest> request) async {
    return deleteMeasure(call, await request);
  }

  $async.Future<$6.MeasureProgressesResponse> getMeasureProgresses_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.MeasureProgressGetRequest> request) async {
    return getMeasureProgresses(call, await request);
  }

  $async.Future<$6.MeasureProgress> getMeasureProgress_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.MeasureProgressGetRequest> request) async {
    return getMeasureProgress(call, await request);
  }

  $async.Future<$1.StringValue> createMeasureProgress_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.MeasureProgressRequest> request) async {
    return createMeasureProgress(call, await request);
  }

  $async.Future<$2.Empty> updateMeasureProgress_Pre($grpc.ServiceCall call,
      $async.Future<$6.MeasureProgressRequest> request) async {
    return updateMeasureProgress(call, await request);
  }

  $async.Future<$2.Empty> deleteMeasureProgress_Pre($grpc.ServiceCall call,
      $async.Future<$6.MeasureProgressDeleteRequest> request) async {
    return deleteMeasureProgress(call, await request);
  }

  $async.Future<$6.MeasuresResponse> getMeasures(
      $grpc.ServiceCall call, $6.MeasureGetRequest request);
  $async.Future<$6.Measure> getMeasure(
      $grpc.ServiceCall call, $6.MeasureGetRequest request);
  $async.Future<$1.StringValue> createMeasure(
      $grpc.ServiceCall call, $6.MeasureRequest request);
  $async.Future<$2.Empty> updateMeasure(
      $grpc.ServiceCall call, $6.MeasureRequest request);
  $async.Future<$2.Empty> deleteMeasure(
      $grpc.ServiceCall call, $6.MeasureDeleteRequest request);
  $async.Future<$6.MeasureProgressesResponse> getMeasureProgresses(
      $grpc.ServiceCall call, $6.MeasureProgressGetRequest request);
  $async.Future<$6.MeasureProgress> getMeasureProgress(
      $grpc.ServiceCall call, $6.MeasureProgressGetRequest request);
  $async.Future<$1.StringValue> createMeasureProgress(
      $grpc.ServiceCall call, $6.MeasureProgressRequest request);
  $async.Future<$2.Empty> updateMeasureProgress(
      $grpc.ServiceCall call, $6.MeasureProgressRequest request);
  $async.Future<$2.Empty> deleteMeasureProgress(
      $grpc.ServiceCall call, $6.MeasureProgressDeleteRequest request);
}
