// Copyright (c) 2020, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/protos/generated/general/unit_of_measurement.pbgrpc.dart' as unit_of_measurement_pbgrpc;

class UnitOfMeasurement {
  static const String className = 'MeasureUnit';

  static const idField = 'id';
  String id;
  static const symbolField = 'symbol';
  String symbol;
  static const nameField = 'name';
  String name;


}

class UnitOfMeasurementHelper {

  static unit_of_measurement_pbgrpc.UnitOfMeasurement writeToProtoBuf(UnitOfMeasurement unitOfMeasurement) {
    unit_of_measurement_pbgrpc.UnitOfMeasurement unitOfMeasurementPb = unit_of_measurement_pbgrpc.UnitOfMeasurement();

    if (unitOfMeasurement.id != null) unitOfMeasurementPb.id = unitOfMeasurement.id;
    if (unitOfMeasurement.symbol != null) unitOfMeasurementPb.symbol = unitOfMeasurement.symbol;
    if (unitOfMeasurement.name != null) unitOfMeasurementPb.name = unitOfMeasurement.name;

    return unitOfMeasurementPb;
  }

  static UnitOfMeasurement readFromProtoBuf(unit_of_measurement_pbgrpc.UnitOfMeasurement unitOfMeasurementPb) {
    UnitOfMeasurement unitOfMeasurement = UnitOfMeasurement();

    if (unitOfMeasurementPb.hasId()) unitOfMeasurement.id = unitOfMeasurementPb.id;
    if (unitOfMeasurementPb.hasSymbol()) unitOfMeasurement.symbol = unitOfMeasurementPb.symbol;
    if (unitOfMeasurementPb.hasName()) unitOfMeasurement.name = unitOfMeasurementPb.name;

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