///
//  Generated code. Do not modify.
//  source: objective/objective_measure.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const CustomObjective$json = const {
  '1': 'CustomObjective',
  '2': const [
    const {'1': 'objectiveOnlySpecification', '2': 0},
    const {'1': 'objectiveOnlySpecificationAndLeaderUserNotificationEmailIdiom', '2': 1},
    const {'1': 'objectiveOnlySpecificationStartDateEndDate', '2': 2},
    const {'1': 'objectiveOnlyWithMeasure', '2': 3},
    const {'1': 'objectiveWithMeasure', '2': 4},
    const {'1': 'objectiveWithMeasureAndTree', '2': 5},
  ],
};

const CustomMeasure$json = const {
  '1': 'CustomMeasure',
  '2': const [
    const {'1': 'measureOnlySpecification', '2': 0},
    const {'1': 'measureWithoutObjective', '2': 1},
  ],
};

const CustomMeasureProgress$json = const {
  '1': 'CustomMeasureProgress',
  '2': const [
    const {'1': 'measureProgressWithoutMeasure', '2': 0},
  ],
};

const Objective$json = const {
  '1': 'Objective',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'start_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'end_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
    const {'1': 'organization', '3': 7, '4': 1, '5': 11, '6': '.auge.protobuf.Organization', '10': 'organization'},
    const {'1': 'group', '3': 8, '4': 1, '5': 11, '6': '.auge.protobuf.Group', '10': 'group'},
    const {'1': 'aligned_to', '3': 9, '4': 1, '5': 11, '6': '.auge.protobuf.Objective', '10': 'alignedTo'},
    const {'1': 'leader', '3': 10, '4': 1, '5': 11, '6': '.auge.protobuf.User', '10': 'leader'},
    const {'1': 'archived', '3': 11, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'aligned_with_children', '3': 12, '4': 3, '5': 11, '6': '.auge.protobuf.Objective', '10': 'alignedWithChildren'},
    const {'1': 'measures', '3': 13, '4': 3, '5': 11, '6': '.auge.protobuf.Measure', '10': 'measures'},
  ],
};

const ObjectiveRequest$json = const {
  '1': 'ObjectiveRequest',
  '2': const [
    const {'1': 'objective', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.Objective', '10': 'objective'},
    const {'1': 'auth_user_id', '3': 2, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 3, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const ObjectiveDeleteRequest$json = const {
  '1': 'ObjectiveDeleteRequest',
  '2': const [
    const {'1': 'objective_id', '3': 1, '4': 1, '5': 9, '10': 'objectiveId'},
    const {'1': 'objective_version', '3': 2, '4': 1, '5': 5, '10': 'objectiveVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const Objectives$json = const {
  '1': 'Objectives',
  '2': const [
    const {'1': 'objectives', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.Objective', '10': 'objectives'},
  ],
};

const ObjectiveGetRequest$json = const {
  '1': 'ObjectiveGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'organization_id', '3': 2, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'measure_id', '3': 3, '4': 1, '5': 9, '10': 'measureId'},
    const {'1': 'aligned_to_recursive', '3': 4, '4': 1, '5': 5, '10': 'alignedToRecursive'},
    const {'1': 'custom_objective', '3': 5, '4': 1, '5': 14, '6': '.auge.protobuf.CustomObjective', '10': 'customObjective'},
    const {'1': 'with_archived', '3': 6, '4': 1, '5': 8, '10': 'withArchived'},
    const {'1': 'group_ids', '3': 7, '4': 3, '5': 9, '10': 'groupIds'},
    const {'1': 'leader_user_ids', '3': 8, '4': 3, '5': 9, '10': 'leaderUserIds'},
  ],
};

const ObjectivesResponse$json = const {
  '1': 'ObjectivesResponse',
  '2': const [
    const {'1': 'objectives', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.Objective', '10': 'objectives'},
  ],
};

const Measure$json = const {
  '1': 'Measure',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'metric', '3': 5, '4': 1, '5': 9, '10': 'metric'},
    const {'1': 'decimals_number', '3': 6, '4': 1, '5': 5, '10': 'decimalsNumber'},
    const {'1': 'start_value', '3': 7, '4': 1, '5': 1, '10': 'startValue'},
    const {'1': 'end_value', '3': 8, '4': 1, '5': 1, '10': 'endValue'},
    const {'1': 'unit_of_measurement', '3': 9, '4': 1, '5': 11, '6': '.auge.protobuf.UnitOfMeasurement', '10': 'unitOfMeasurement'},
    const {'1': 'current_value', '3': 10, '4': 1, '5': 1, '10': 'currentValue'},
    const {'1': 'measure_progress', '3': 11, '4': 3, '5': 11, '6': '.auge.protobuf.MeasureProgress', '10': 'measureProgress'},
    const {'1': 'objective', '3': 12, '4': 1, '5': 11, '6': '.auge.protobuf.Objective', '10': 'objective'},
  ],
};

const MeasureRequest$json = const {
  '1': 'MeasureRequest',
  '2': const [
    const {'1': 'measure', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.Measure', '10': 'measure'},
    const {'1': 'auth_user_id', '3': 2, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 3, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const MeasureDeleteRequest$json = const {
  '1': 'MeasureDeleteRequest',
  '2': const [
    const {'1': 'measure_id', '3': 1, '4': 1, '5': 9, '10': 'measureId'},
    const {'1': 'measure_version', '3': 2, '4': 1, '5': 5, '10': 'measureVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const MeasuresResponse$json = const {
  '1': 'MeasuresResponse',
  '2': const [
    const {'1': 'measures', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.Measure', '10': 'measures'},
  ],
};

const MeasureGetRequest$json = const {
  '1': 'MeasureGetRequest',
  '2': const [
    const {'1': 'objective_id', '3': 1, '4': 1, '5': 9, '10': 'objectiveId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'custom_measure', '3': 3, '4': 1, '5': 14, '6': '.auge.protobuf.CustomMeasure', '10': 'customMeasure'},
  ],
};

const MeasureProgress$json = const {
  '1': 'MeasureProgress',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'current_value', '3': 4, '4': 1, '5': 1, '10': 'currentValue'},
    const {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'measure', '3': 6, '4': 1, '5': 11, '6': '.auge.protobuf.Measure', '10': 'measure'},
  ],
};

const MeasureProgressRequest$json = const {
  '1': 'MeasureProgressRequest',
  '2': const [
    const {'1': 'measure_progress', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.MeasureProgress', '10': 'measureProgress'},
    const {'1': 'auth_user_id', '3': 2, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 3, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const MeasureProgressDeleteRequest$json = const {
  '1': 'MeasureProgressDeleteRequest',
  '2': const [
    const {'1': 'measure_progress_id', '3': 1, '4': 1, '5': 9, '10': 'measureProgressId'},
    const {'1': 'measure_progress_version', '3': 2, '4': 1, '5': 5, '10': 'measureProgressVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const MeasureProgressesResponse$json = const {
  '1': 'MeasureProgressesResponse',
  '2': const [
    const {'1': 'measure_progresses', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.MeasureProgress', '10': 'measureProgresses'},
  ],
};

const MeasureProgressGetRequest$json = const {
  '1': 'MeasureProgressGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'measure_id', '3': 2, '4': 1, '5': 9, '10': 'measureId'},
    const {'1': 'custom_measure_progress', '3': 3, '4': 1, '5': 14, '6': '.auge.protobuf.CustomMeasureProgress', '10': 'customMeasureProgress'},
  ],
};

