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

  unit_of_measurement_pbgrpc.UnitOfMeasurement writeToProtoBuf() {
    unit_of_measurement_pbgrpc.UnitOfMeasurement unitOfMeasurementPb = unit_of_measurement_pbgrpc.UnitOfMeasurement();

    if (id != null) unitOfMeasurementPb.id = id;
    if (symbol != null) unitOfMeasurementPb.symbol = symbol;
    if (name != null) unitOfMeasurementPb.name = name;

    return unitOfMeasurementPb;
  }

  void readFromProtoBuf(unit_of_measurement_pbgrpc.UnitOfMeasurement unitOfMeasurementPb) {
    if (unitOfMeasurementPb.hasId()) id = unitOfMeasurementPb.id;
    if (unitOfMeasurementPb.hasSymbol()) symbol = unitOfMeasurementPb.symbol;
    if (unitOfMeasurementPb.hasName()) name = unitOfMeasurementPb.name;
  }

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
}