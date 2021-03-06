// Copyright (c) 2020, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/protos/generated/general/unit_of_measurement.pbgrpc.dart' as unit_of_measurement_pbgrpc;

class UnitOfMeasurement {
  static const String className = 'UnitOfMeasurement';

  static const idField = 'id';
  String id;
  static const nameField = 'name';
  String name;
  static const symbolField = 'symbol';
  String symbol;
}

class UnitOfMeasurementHelper {

  static unit_of_measurement_pbgrpc.UnitOfMeasurement writeToProtoBuf(UnitOfMeasurement unitOfMeasurement) {
    unit_of_measurement_pbgrpc.UnitOfMeasurement unitOfMeasurementPb = unit_of_measurement_pbgrpc.UnitOfMeasurement();

    if (unitOfMeasurement.id != null) unitOfMeasurementPb.id = unitOfMeasurement.id;
    if (unitOfMeasurement.name != null) unitOfMeasurementPb.name = unitOfMeasurement.name;
    if (unitOfMeasurement.symbol != null)
      unitOfMeasurementPb.symbol = unitOfMeasurement.symbol;

    return unitOfMeasurementPb;
  }

  static UnitOfMeasurement readFromProtoBuf(unit_of_measurement_pbgrpc.UnitOfMeasurement unitOfMeasurementPb) {
    UnitOfMeasurement unitOfMeasurement = UnitOfMeasurement();

    if (unitOfMeasurementPb.hasId()) unitOfMeasurement.id = unitOfMeasurementPb.id;
    if (unitOfMeasurementPb.hasName()) unitOfMeasurement.name = unitOfMeasurementPb.name;
    if (unitOfMeasurementPb.hasSymbol()) unitOfMeasurement.symbol = unitOfMeasurementPb.symbol;

    return unitOfMeasurement;
  }
/*
  static Map<String, dynamic> fromProtoBufToModelMap(unit_of_measurement_pbgrpc.UnitOfMeasurement unitOfMeasurementPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (unitOfMeasurementPb.hasId()) map[UnitOfMeasurement.idField] = unitOfMeasurementPb.id;
      if (unitOfMeasurementPb.hasName()) {
        map[UnitOfMeasurement.nameField] = unitOfMeasurementPb.name;
      }
    } else {
      if (unitOfMeasurementPb.hasId()) map[UnitOfMeasurement.idField] = unitOfMeasurementPb.id;
      if (unitOfMeasurementPb.hasSymbol()) {
        map[UnitOfMeasurement.symbolField] = unitOfMeasurementPb.symbol;
      }
      if (unitOfMeasurementPb.hasName()) {
        map[UnitOfMeasurement.nameField] = unitOfMeasurementPb.name;
      }
    }
    return map;
  }

 */
}