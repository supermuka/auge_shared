///
//  Generated code. Do not modify.
//  source: general/unit_of_measurement.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../google/protobuf/empty.pb.dart' as $0;
import 'unit_of_measurement.pb.dart' as $1;
export 'unit_of_measurement.pb.dart';

class UnitOfMeasurementServiceClient extends $grpc.Client {
  static final _$getUnitsOfMeasurement =
      $grpc.ClientMethod<$0.Empty, $1.UnitsOfMeasurementResponse>(
          '/auge.protobuf.UnitOfMeasurementService/GetUnitsOfMeasurement',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UnitsOfMeasurementResponse.fromBuffer(value));

  UnitOfMeasurementServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.UnitsOfMeasurementResponse> getUnitsOfMeasurement(
      $0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getUnitsOfMeasurement, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UnitOfMeasurementServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.UnitOfMeasurementService';

  UnitOfMeasurementServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.UnitsOfMeasurementResponse>(
        'GetUnitsOfMeasurement',
        getUnitsOfMeasurement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.UnitsOfMeasurementResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.UnitsOfMeasurementResponse> getUnitsOfMeasurement_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getUnitsOfMeasurement(call, await request);
  }

  $async.Future<$1.UnitsOfMeasurementResponse> getUnitsOfMeasurement(
      $grpc.ServiceCall call, $0.Empty request);
}
