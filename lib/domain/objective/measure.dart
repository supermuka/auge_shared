// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/src/util/common_utils.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/domain/objective/objective.dart';
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
  static const String measureUnitField = 'measureUnit';
  MeasureUnit measureUnit;

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

  objective_measure_pb.Measure writeToProtoBuf() {
    objective_measure_pb.Measure measurePb = objective_measure_pb.Measure();

    if (id != null) measurePb.id = id;
    if (version != null) measurePb.version = version;
    if (name != null) measurePb.name = name;
    if (description != null) measurePb.description = description;

    if (metric != null) measurePb.metric = metric;

    if (decimalsNumber != null) measurePb.decimalsNumber = decimalsNumber;
    if (startValue != null) measurePb.startValue = startValue;
    if (endValue != null) measurePb.endValue = endValue;
    if (currentValue != null) measurePb.currentValue = currentValue;
    if (measureUnit != null) measurePb.measureUnit = measureUnit.writeToProtoBuf();

    if (measureProgress != null && measureProgress.isNotEmpty) measurePb.measureProgress.addAll(measureProgress.map((m) => m.writeToProtoBuf()));

    if (objective != null) measurePb.objective = objective.writeToProtoBuf();

    return measurePb;
  }

  void readFromProtoBuf(objective_measure_pb.Measure measurePb, Map<String, dynamic> cache) {
    if (measurePb.hasId()) id = measurePb.id;
    if (measurePb.hasVersion()) version = measurePb.version;
    if (measurePb.hasName()) name = measurePb.name;
    if (measurePb.hasDescription()) description = measurePb.description;

    if (measurePb.hasMetric()) metric = measurePb.metric;
    if (measurePb.hasDecimalsNumber()) decimalsNumber = measurePb.decimalsNumber;
    if (measurePb.hasStartValue()) startValue = measurePb.startValue;
    if (measurePb.hasEndValue()) endValue = measurePb.endValue;
    if (measurePb.hasCurrentValue()) currentValue = measurePb.currentValue;
    if (measurePb.hasMeasureUnit()) measureUnit = cache.putIfAbsent('${Measure.measureUnitField}${measurePb.measureUnit.id}@${MeasureUnit.className}', () => MeasureUnit()..readFromProtoBuf(measurePb.measureUnit));
    if (measurePb.measureProgress.isNotEmpty) measureProgress = measurePb.measureProgress.map((u) => MeasureProgress()..readFromProtoBuf(u, cache)).toList(); // It is composite, no need cache
    if (measurePb.hasObjective()) objective = cache.putIfAbsent('${Measure.objectiveField}${measurePb.objective.id}@${Objective.className}', () => Objective()..readFromProtoBuf(measurePb.objective, cache));
  }

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
      if (measurePb.hasMeasureUnit()) {
        map[Measure.measureUnitField] = MeasureUnit.fromProtoBufToModelMap(
            measurePb.measureUnit, onlyIdAndSpecificationForDepthFields, true);
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
}

class MeasureProgress {
  static const String className = 'MeasureProgress';

  // Base - implements
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;
  static const String isDeletedField = 'isDeleted';
  bool isDeleted;

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

  objective_measure_pb.MeasureProgress writeToProtoBuf() {
    objective_measure_pb.MeasureProgress measureProgressPb = objective_measure_pb.MeasureProgress();

    if (id != null) measureProgressPb.id = id;
    if (version != null) measureProgressPb.version = version;

    if (date != null)  measureProgressPb.date =  CommonUtils.timestampFromDateTime(date.toUtc());

    if (currentValue != null) {
      measureProgressPb.currentValue = currentValue;
    }
    if (comment != null) {
      measureProgressPb.comment = comment;
    }

    if (measure != null) {
      measureProgressPb.measure = measure.writeToProtoBuf();
    }

    return measureProgressPb;
  }

  void readFromProtoBuf(objective_measure_pb.MeasureProgress measureProgressPb, Map<String, dynamic> cache) {
    if (measureProgressPb.hasId()) id = measureProgressPb.id;
    if (measureProgressPb.hasVersion()) {
      version = measureProgressPb.version;
    }
    //if (measureProgressPb.hasDate()) this.date = CommonUtils.dateTimeFromTimestamp(measureProgressPb.date);
    if (measureProgressPb.hasDate()) date = measureProgressPb.date.toDateTime();
    /*
        DateTime.fromMicrosecondsSinceEpoch(
            measureProgressPb.date.seconds.toInt() * 1000000 +
                measureProgressPb.date.nanos ~/ 1000);

     */
    if (measureProgressPb.hasCurrentValue()) {
      currentValue = measureProgressPb.currentValue;
    }
    if (measureProgressPb.hasComment()) {
      comment = measureProgressPb.comment;
    }
    if (measureProgressPb.hasMeasure()) {
      measure = Measure()..readFromProtoBuf(measureProgressPb.measure, cache);
    }
  }

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
}

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