///
//  Generated code. Do not modify.
//  source: general/organization.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'organization.pb.dart' as $0;
import '../google/protobuf/wrappers.pb.dart' as $1;
import '../google/protobuf/empty.pb.dart' as $2;
export 'organization.pb.dart';

class OrganizationServiceClient extends $grpc.Client {
  static final _$getOrganizations =
      $grpc.ClientMethod<$0.OrganizationGetRequest, $0.OrganizationsResponse>(
          '/auge.protobuf.OrganizationService/GetOrganizations',
          ($0.OrganizationGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.OrganizationsResponse.fromBuffer(value));
  static final _$createOrganization =
      $grpc.ClientMethod<$0.OrganizationRequest, $1.StringValue>(
          '/auge.protobuf.OrganizationService/CreateOrganization',
          ($0.OrganizationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$updateOrganization =
      $grpc.ClientMethod<$0.OrganizationRequest, $2.Empty>(
          '/auge.protobuf.OrganizationService/UpdateOrganization',
          ($0.OrganizationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$deleteOrganization =
      $grpc.ClientMethod<$0.OrganizationDeleteRequest, $2.Empty>(
          '/auge.protobuf.OrganizationService/DeleteOrganization',
          ($0.OrganizationDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  OrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.OrganizationsResponse> getOrganizations(
      $0.OrganizationGetRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getOrganizations, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> createOrganization(
      $0.OrganizationRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> updateOrganization(
      $0.OrganizationRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$updateOrganization, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteOrganization(
      $0.OrganizationDeleteRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$deleteOrganization, request, options: options);
  }
}

abstract class OrganizationServiceBase extends $grpc.Service {
  $core.String get $name => 'auge.protobuf.OrganizationService';

  OrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.OrganizationGetRequest,
            $0.OrganizationsResponse>(
        'GetOrganizations',
        getOrganizations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OrganizationGetRequest.fromBuffer(value),
        ($0.OrganizationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OrganizationRequest, $1.StringValue>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OrganizationRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OrganizationRequest, $2.Empty>(
        'UpdateOrganization',
        updateOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OrganizationRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OrganizationDeleteRequest, $2.Empty>(
        'DeleteOrganization',
        deleteOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OrganizationDeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.OrganizationsResponse> getOrganizations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.OrganizationGetRequest> request) async {
    return getOrganizations(call, await request);
  }

  $async.Future<$1.StringValue> createOrganization_Pre($grpc.ServiceCall call,
      $async.Future<$0.OrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$2.Empty> updateOrganization_Pre($grpc.ServiceCall call,
      $async.Future<$0.OrganizationRequest> request) async {
    return updateOrganization(call, await request);
  }

  $async.Future<$2.Empty> deleteOrganization_Pre($grpc.ServiceCall call,
      $async.Future<$0.OrganizationDeleteRequest> request) async {
    return deleteOrganization(call, await request);
  }

  $async.Future<$0.OrganizationsResponse> getOrganizations(
      $grpc.ServiceCall call, $0.OrganizationGetRequest request);
  $async.Future<$1.StringValue> createOrganization(
      $grpc.ServiceCall call, $0.OrganizationRequest request);
  $async.Future<$2.Empty> updateOrganization(
      $grpc.ServiceCall call, $0.OrganizationRequest request);
  $async.Future<$2.Empty> deleteOrganization(
      $grpc.ServiceCall call, $0.OrganizationDeleteRequest request);
}
