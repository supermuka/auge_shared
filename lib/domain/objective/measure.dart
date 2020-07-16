// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel


import 'package:auge_shared/src/util/common_utils.dart';

import 'package:auge_shared/domain/general/unit_of_measurement.dart';
import 'package:auge_shared/domain/objective/objective.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated

import 'package:auge_shared/protos/generated/general/unit_of_measurement.pb.dart' as unit_of_measurement_pb;
import 'package:auge_shared/protos/generated/objective/objective_measure.pb.dart' as objective_measure_pb;

/// Domain model class to represent an measure
class Measure {
  static const String className = 'Measure';

  // Base - implements
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // History
  // HistoryItem lastHistoryItem;

  // Specific
  static const String nameField = 'name';
  String name;
  static const String descriptionField = 'description';
  String description;
  static const String metricField = 'metric';
  String metric;
  static const String decimalsNumberField = 'decimalsNumber';
  int decimalsNumber;
  static const String startValueField = 'startValue';
  double startValue;
  static const String endValueField = 'endValue';
  double endValue;
  static const String unitOfMeasurementField = 'unitOfMeasurement';
  UnitOfMeasurement unitOfMeasurement;

  // Transient
  static const String currentValueField = 'currentValue';
  double currentValue; // field calculeted on measureProgress
  static const String measureProgressField = 'measureProgress';
  List<MeasureProgress> measureProgress;
  static const String objectiveField = 'objective';
  Objective objective;

  Measure() {
    // lastHistoryItem = HistoryItem();
    // measureUnit = MeasureUnit();
    measureProgress = <MeasureProgress>[];
  }

  // NumberFormat _numberFormat;
  double get minValue => startValue == null || endValue == null ? null : startValue <= endValue ? num.tryParse(startValue.toStringAsFixed(decimalsNumber ?? 0)) : num.tryParse(endValue.toStringAsFixed(decimalsNumber ?? 0));
  set minValue(double value) => startValue <= endValue ? startValue = value : endValue = value;

  double get maxValue => startValue == null || endValue == null ? null : startValue <= endValue ? num.tryParse(endValue.toStringAsFixed(decimalsNumber ?? 0)) : num.tryParse(startValue.toStringAsFixed(decimalsNumber ?? 0));
  set maxValue(double value) => startValue <= endValue ? endValue = value: startValue = value;

  double get stepValue => decimalsNumber == null || decimalsNumber == 0 ? 1 : num.tryParse('.'.padRight(decimalsNumber,'0') + '1');

  double get valueRelatedMinMax => startValue == null ? null : endValue == null ? null : currentValue == null ? startValue <= endValue ? startValue : endValue : startValue <= endValue ? num.tryParse(currentValue.toStringAsFixed(decimalsNumber ?? 0)) : num.tryParse((startValue + endValue - currentValue).toStringAsFixed(decimalsNumber ?? 0));
  // set valueRelatedMinMax(double value) => startValue <= endValue ? currentValue = value : currentValue = startValue + endValue - value;

  int get progress {

    int _progress = 0;

    if (endValue != null && startValue != null) {
      double endMinusStartValue = (endValue - startValue);

      if (endMinusStartValue != null && endMinusStartValue != 0) {
        _progress =
            (((currentValue ?? startValue ?? 0) - (startValue ?? 0)) /
                endMinusStartValue * 100)
                ?.toInt();
      }
    }
    return _progress;
  }
/*
  static Map<String, dynamic> fromProtoBufToModelMap(objective_measure_pb.Measure measurePb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (measurePb.hasId()) {
        map[Measure.idField] = measurePb.id;
      }
      if (measurePb.hasName()) {
        map[Measure.nameField] = measurePb.name;
      }
    } else {
      if (measurePb.hasId()) {
        map[Measure.idField] = measurePb.id;
      }
      if (measurePb.hasVersion()) {
        map[Measure.versionField] = measurePb.version;
      }
      if (measurePb.hasName()) {
        map[Measure.nameField] = measurePb.name;
      }
      if (measurePb.hasDescription()) {
        map[Measure.descriptionField] = measurePb.description;
      }
      if (measurePb.hasMetric()) {
        map[Measure.metricField] = measurePb.metric;
      }
      if (measurePb.hasDecimalsNumber()) {
        map[Measure.decimalsNumberField] = measurePb.decimalsNumber;
      }
      if (measurePb.hasStartValue()) {
        map[Measure.startValueField] = measurePb.startValue;
      }
      if (measurePb.hasEndValue()) {
        map[Measure.endValueField] = measurePb.endValue;
      }
      if (measurePb.hasCurrentValue()) {
        map[Measure.currentValueField] = measurePb.currentValue;
      }
      if (measurePb.hasUnitOfMeasurement()) {
        map[Measure.unitOfMeasurementField] = UnitOfMeasurement.fromProtoBufToModelMap(
            measurePb.unitOfMeasurement, onlyIdAndSpecificationForDepthFields, true);
      }
      if (measurePb.measureProgress.isNotEmpty) {
        map[Measure.measureProgressField] =
            measurePb.measureProgress.map((mp) =>
                MeasureProgress.fromProtoBufToModelMap(mp, onlyIdAndSpecificationForDepthFields, true)).toList();
      }
      if (measurePb.hasObjective()) {
        map[Measure.objectiveField] = Objective.fromProtoBufToModelMap(
            measurePb.objective, onlyIdAndSpecificationForDepthFields, true);
      }
    }

    return map;
  }
 */
}

class MeasureHelper {

  static objective_measure_pb.Measure writeToProtoBuf(Measure measure) {
    objective_measure_pb.Measure measurePb = objective_measure_pb.Measure();

    if (measure.id != null) measurePb.id = measure.id;
    if (measure.version != null) measurePb.version = measure.version;
    if (measure.name != null) measurePb.name = measure.name;
    if (measure.description != null)
      measurePb.description = measure.description;

    if (measure.metric != null) measurePb.metric = measure.metric;

    if (measure.decimalsNumber != null)
      measurePb.decimalsNumber = measure.decimalsNumber;
    if (measure.startValue != null) measurePb.startValue = measure.startValue;
    if (measure.endValue != null) measurePb.endValue = measure.endValue;
    if (measure.currentValue != null)
      measurePb.currentValue = measure.currentValue;
    if (measure.unitOfMeasurement != null) measurePb.unitOfMeasurement =
        UnitOfMeasurementHelper.writeToProtoBuf(
            measure.unitOfMeasurement);

    if (measure.measureProgress != null &&
        measure.measureProgress.isNotEmpty) measurePb
        .measureProgress.addAll(
        measure.measureProgress.map((m) =>
            MeasureProgressHelper.writeToProtoBuf(
                m)));

    if (measure.objective != null) measurePb.objective =
        ObjectiveHelper.writeToProtoBuf(
            measure.objective);

    return measurePb;
  }

  static Measure readFromProtoBuf(objective_measure_pb.Measure measurePb,
      Map<String, dynamic> cache) {
    Measure measure = Measure();

    if (measurePb.hasId()) measure.id = measurePb.id;
    if (measurePb.hasVersion()) measure.version = measurePb.version;
    if (measurePb.hasName()) measure.name = measurePb.name;
    if (measurePb.hasDescription()) measure.description = measurePb.description;

    if (measurePb.hasMetric()) measure.metric = measurePb.metric;
    if (measurePb.hasDecimalsNumber())
      measure.decimalsNumber = measurePb.decimalsNumber;
    if (measurePb.hasStartValue()) measure.startValue = measurePb.startValue;
    if (measurePb.hasEndValue()) measure.endValue = measurePb.endValue;
    if (measurePb.hasCurrentValue()) measure.currentValue = measurePb.currentValue;
    if (measurePb.hasUnitOfMeasurement()) measure.unitOfMeasurement = cache.putIfAbsent(
        '${Measure.unitOfMeasurementField}${measurePb.unitOfMeasurement
            .id}@${UnitOfMeasurement.className}', () =>
        UnitOfMeasurementHelper.readFromProtoBuf(measurePb.unitOfMeasurement));
    if (measurePb.measureProgress.isNotEmpty)
      measure.measureProgress = measurePb.measureProgress.map((u) =>
      MeasureProgressHelper.readFromProtoBuf(u, cache))
          .toList(); // It is composite, no need cache
    if (measurePb.hasObjective()) measure.objective = cache.putIfAbsent(
        '${Measure.objectiveField}${measurePb.objective.id}@${Objective
            .className}', () =>
    ObjectiveHelper.readFromProtoBuf(measurePb.objective, cache));

    return measure;
  }
}

class MeasureProgress {
  static const String className = 'MeasureProgress';

  // Base - implements
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;
  //static const String isDeletedField = 'isDeleted';
  //bool isDeleted;

  // Base - History - Transient
  // REFACTOR HistoryItem lastHistoryItem;

  // Specific
  static const String dateField = 'date';
  DateTime date;
  static const String currentValueField = 'currentValue';
  double currentValue;
  static const String commentField = 'comment';
  String comment;
  static const String measureField = 'measure';
  Measure measure;

  MeasureProgress() {
    // lastHistoryItem = HistoryItem();
  }

/*
  static Map<String, dynamic> fromProtoBufToModelMap(objective_measure_pb.MeasureProgress measureProgressPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (measureProgressPb.hasId()) {
        map[MeasureProgress.idField] = measureProgressPb.id;
      }
      if (measureProgressPb.hasComment()) {
        map[MeasureProgress.commentField] = measureProgressPb.comment;
      }
    } else {
      if (measureProgressPb.hasId()) {
        map[MeasureProgress.idField] = measureProgressPb.id;
      }
      if (measureProgressPb.hasVersion()) {
        map[MeasureProgress.versionField] = measureProgressPb.version;
      }
      /*
      if (measureProgressPb.hasDate())
        map[MeasureProgress.dateField] = CommonUtils.dateTimeFromTimestamp(measureProgressPb.date);
       */
      if (measureProgressPb.hasDate()) {
        map[MeasureProgress.dateField] = measureProgressPb.date.toDateTime();
      }
      if (measureProgressPb.hasCurrentValue()) {
        map[MeasureProgress.currentValueField] = measureProgressPb.currentValue;
      }
      if (measureProgressPb.hasComment()) {
        map[MeasureProgress.commentField] = measureProgressPb.comment;
      }
      if (measureProgressPb.hasMeasure()) {
        map[MeasureProgress.measureField] =
          Measure.fromProtoBufToModelMap(measureProgressPb.measure, onlyIdAndSpecificationForDepthFields, true);
      }
    }
    return map;
  }
 */

}

class MeasureProgressHelper {

  static objective_measure_pb.MeasureProgress writeToProtoBuf(MeasureProgress measureProgress) {
    objective_measure_pb.MeasureProgress measureProgressPb = objective_measure_pb.MeasureProgress();

    if (measureProgress.id != null) measureProgressPb.id = measureProgress.id;
    if (measureProgress.date != null) measureProgressPb.date =
        CommonUtils.timestampFromDateTime(measureProgress.date.toUtc());

    if (measureProgress.version != null) measureProgressPb.version = measureProgress.version;


    if (measureProgress.currentValue != null) {
      measureProgressPb.currentValue = measureProgress.currentValue;
    }
    if (measureProgress.comment != null) {
      measureProgressPb.comment = measureProgress.comment;
    }

    if (measureProgress.measure != null) {
      measureProgressPb.measure = MeasureHelper.writeToProtoBuf(
          measureProgress.measure);
    }

    return measureProgressPb;
  }

  static MeasureProgress readFromProtoBuf(objective_measure_pb.MeasureProgress measureProgressPb, Map<String, dynamic> cache) {
    MeasureProgress measureProgress = MeasureProgress();

    if (measureProgressPb.hasId()) measureProgress.id = measureProgressPb.id;
    if (measureProgressPb.hasVersion()) {
      measureProgress.version = measureProgressPb.version;
    }
    //if (measureProgressPb.hasDate()) this.date = CommonUtils.dateTimeFromTimestamp(measureProgressPb.date);
    if (measureProgressPb.hasDate()) measureProgress.date = measureProgressPb.date.toDateTime();
    /*
        DateTime.fromMicrosecondsSinceEpoch(
            measureProgressPb.date.seconds.toInt() * 1000000 +
                measureProgressPb.date.nanos ~/ 1000);

     */
    if (measureProgressPb.hasCurrentValue()) {
      measureProgress.currentValue = measureProgressPb.currentValue;
    }
    if (measureProgressPb.hasComment()) {
      measureProgress.comment = measureProgressPb.comment;
    }
    if (measureProgressPb.hasMeasure()) {
      measureProgress.measure = MeasureHelper.readFromProtoBuf(measureProgressPb.measure, cache);
    }

    return measureProgress;
  }
}

/*
class MeasureUnit {
  static const String className = 'MeasureUnit';

  static const idField = 'id';
  String id;
  static const symbolField = 'symbol';
  String symbol;
  static const nameField = 'name';
  String name;

  objective_measure_pb.MeasureUnit writeToProtoBuf() {
    objective_measure_pb.MeasureUnit measureUnitPb = objective_measure_pb.MeasureUnit();

    if (id != null) measureUnitPb.id = id;
    if (symbol != null) measureUnitPb.symbol = symbol;
    if (name != null) measureUnitPb.name = name;

    return measureUnitPb;
  }

  void readFromProtoBuf(objective_measure_pb.MeasureUnit measureUnitPb) {
    if (measureUnitPb.hasId()) id = measureUnitPb.id;
    if (measureUnitPb.hasSymbol()) symbol = measureUnitPb.symbol;
    if (measureUnitPb.hasName()) name = measureUnitPb.name;
  }

  static Map<String, dynamic> fromProtoBufToModelMap(objective_measure_pb.MeasureUnit measureUnitPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (measureUnitPb.hasId()) map[MeasureUnit.idField] = measureUnitPb.id;
      if (measureUnitPb.hasName()) {
        map[MeasureUnit.nameField] = measureUnitPb.name;
      }
    } else {
      if (measureUnitPb.hasId()) map[MeasureUnit.idField] = measureUnitPb.id;
      if (measureUnitPb.hasSymbol()) {
        map[MeasureUnit.symbolField] = measureUnitPb.symbol;
      }
      if (measureUnitPb.hasName()) {
        map[MeasureUnit.nameField] = measureUnitPb.name;
      }
    }
    return map;
  }
}
*/