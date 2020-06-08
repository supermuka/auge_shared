///
//  Generated code. Do not modify.
//  source: work/work_work_item.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Work$json = const {
  '1': 'Work',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'archived', '3': 5, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'work_stages', '3': 6, '4': 3, '5': 11, '6': '.auge.protobuf.WorkStage', '10': 'workStages'},
    const {'1': 'work_items', '3': 7, '4': 3, '5': 11, '6': '.auge.protobuf.WorkItem', '10': 'workItems'},
    const {'1': 'objective', '3': 8, '4': 1, '5': 11, '6': '.auge.protobuf.Objective', '10': 'objective'},
    const {'1': 'organization', '3': 9, '4': 1, '5': 11, '6': '.auge.protobuf.Organization', '10': 'organization'},
    const {'1': 'group', '3': 10, '4': 1, '5': 11, '6': '.auge.protobuf.Group', '10': 'group'},
    const {'1': 'leader', '3': 11, '4': 1, '5': 11, '6': '.auge.protobuf.User', '10': 'leader'},
  ],
};

const WorkRequest$json = const {
  '1': 'WorkRequest',
  '2': const [
    const {'1': 'work', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.Work', '10': 'work'},
    const {'1': 'auth_user_id', '3': 2, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 3, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkDeleteRequest$json = const {
  '1': 'WorkDeleteRequest',
  '2': const [
    const {'1': 'work_id', '3': 1, '4': 1, '5': 9, '10': 'workId'},
    const {'1': 'work_version', '3': 2, '4': 1, '5': 5, '10': 'workVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorksResponse$json = const {
  '1': 'WorksResponse',
  '2': const [
    const {'1': 'works', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.Work', '10': 'works'},
  ],
};

const WorkGetRequest$json = const {
  '1': 'WorkGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'organization_id', '3': 2, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'objective_id', '3': 3, '4': 1, '5': 9, '10': 'objectiveId'},
    const {'1': 'with_work_items', '3': 4, '4': 1, '5': 8, '10': 'withWorkItems'},
    const {'1': 'with_user_profile', '3': 5, '4': 1, '5': 8, '10': 'withUserProfile'},
    const {'1': 'with_archived', '3': 6, '4': 1, '5': 8, '10': 'withArchived'},
    const {'1': 'group_ids', '3': 7, '4': 3, '5': 9, '10': 'groupIds'},
    const {'1': 'leader_user_ids', '3': 8, '4': 3, '5': 9, '10': 'leaderUserIds'},
    const {'1': 'work_item_with_archived', '3': 9, '4': 1, '5': 8, '10': 'workItemWithArchived'},
    const {'1': 'work_item_assigned_to_ids', '3': 10, '4': 3, '5': 9, '10': 'workItemAssignedToIds'},
  ],
};

const WorkItem$json = const {
  '1': 'WorkItem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'due_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueDate'},
    const {'1': 'planned_value', '3': 6, '4': 1, '5': 1, '10': 'plannedValue'},
    const {'1': 'actual_value', '3': 7, '4': 1, '5': 1, '10': 'actualValue'},
    const {'1': 'unit_of_measurement', '3': 8, '4': 1, '5': 11, '6': '.auge.protobuf.UnitOfMeasurement', '10': 'unitOfMeasurement'},
    const {'1': 'archived', '3': 9, '4': 1, '5': 8, '10': 'archived'},
    const {'1': 'work_stage', '3': 10, '4': 1, '5': 11, '6': '.auge.protobuf.WorkStage', '10': 'workStage'},
    const {'1': 'assigned_to', '3': 11, '4': 3, '5': 11, '6': '.auge.protobuf.User', '10': 'assignedTo'},
    const {'1': 'check_items', '3': 12, '4': 3, '5': 11, '6': '.auge.protobuf.WorkItemCheckItem', '10': 'checkItems'},
    const {'1': 'attachments', '3': 13, '4': 3, '5': 11, '6': '.auge.protobuf.WorkItemAttachment', '10': 'attachments'},
    const {'1': 'work', '3': 14, '4': 1, '5': 11, '6': '.auge.protobuf.Work', '10': 'work'},
  ],
};

const WorkItemRequest$json = const {
  '1': 'WorkItemRequest',
  '2': const [
    const {'1': 'work_item', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.WorkItem', '10': 'workItem'},
    const {'1': 'work_id', '3': 2, '4': 1, '5': 9, '10': 'workId'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkItemDeleteRequest$json = const {
  '1': 'WorkItemDeleteRequest',
  '2': const [
    const {'1': 'work_item_id', '3': 1, '4': 1, '5': 9, '10': 'workItemId'},
    const {'1': 'work_item_version', '3': 2, '4': 1, '5': 5, '10': 'workItemVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkItemsResponse$json = const {
  '1': 'WorkItemsResponse',
  '2': const [
    const {'1': 'workItems', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.WorkItem', '10': 'workItems'},
  ],
};

const WorkItemGetRequest$json = const {
  '1': 'WorkItemGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'work_id', '3': 2, '4': 1, '5': 9, '10': 'workId'},
    const {'1': 'organization_id', '3': 3, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'with_work', '3': 4, '4': 1, '5': 8, '10': 'withWork'},
    const {'1': 'with_user_profile', '3': 5, '4': 1, '5': 8, '10': 'withUserProfile'},
    const {'1': 'with_archived', '3': 6, '4': 1, '5': 8, '10': 'withArchived'},
    const {'1': 'assigned_to_ids', '3': 7, '4': 3, '5': 9, '10': 'assignedToIds'},
  ],
};

const WorkItemAttachment$json = const {
  '1': 'WorkItemAttachment',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
  ],
};

const WorkItemAttachmentsResponse$json = const {
  '1': 'WorkItemAttachmentsResponse',
  '2': const [
    const {'1': 'work_item_attachments', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.WorkItemAttachment', '10': 'workItemAttachments'},
  ],
};

const WorkItemAttachmentGetRequest$json = const {
  '1': 'WorkItemAttachmentGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'work_item_id', '3': 2, '4': 1, '5': 9, '10': 'workItemId'},
    const {'1': 'with_content', '3': 3, '4': 1, '5': 8, '10': 'withContent'},
  ],
};

const WorkItemCheckItem$json = const {
  '1': 'WorkItemCheckItem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'finished', '3': 3, '4': 1, '5': 8, '10': 'finished'},
    const {'1': 'index', '3': 4, '4': 1, '5': 5, '10': 'index'},
  ],
};

const WorkItemCheckItemRequest$json = const {
  '1': 'WorkItemCheckItemRequest',
  '2': const [
    const {'1': 'work_item_check_item', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.WorkItemCheckItem', '10': 'workItemCheckItem'},
    const {'1': 'work_item_id', '3': 2, '4': 1, '5': 9, '10': 'workItemId'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkItemCheckItemsResponse$json = const {
  '1': 'WorkItemCheckItemsResponse',
  '2': const [
    const {'1': 'work_item_check_items', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.WorkItemCheckItem', '10': 'workItemCheckItems'},
  ],
};

const WorkItemCheckItemGetRequest$json = const {
  '1': 'WorkItemCheckItemGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'work_item_id', '3': 2, '4': 1, '5': 9, '10': 'workItemId'},
  ],
};

const WorkStage$json = const {
  '1': 'WorkStage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'state_index', '3': 4, '4': 1, '5': 5, '10': 'stateIndex'},
    const {'1': 'index', '3': 5, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'work', '3': 6, '4': 1, '5': 11, '6': '.auge.protobuf.Work', '10': 'work'},
  ],
};

const WorkStageRequest$json = const {
  '1': 'WorkStageRequest',
  '2': const [
    const {'1': 'work_stage', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.WorkStage', '10': 'workStage'},
    const {'1': 'work_id', '3': 2, '4': 1, '5': 9, '10': 'workId'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkStageDeleteRequest$json = const {
  '1': 'WorkStageDeleteRequest',
  '2': const [
    const {'1': 'work_stage_id', '3': 1, '4': 1, '5': 9, '10': 'workStageId'},
    const {'1': 'work_stage_version', '3': 2, '4': 1, '5': 5, '10': 'workStageVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkStagesResponse$json = const {
  '1': 'WorkStagesResponse',
  '2': const [
    const {'1': 'work_stages', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.WorkStage', '10': 'workStages'},
  ],
};

const WorkStageGetRequest$json = const {
  '1': 'WorkStageGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'work_id', '3': 2, '4': 1, '5': 9, '10': 'workId'},
    const {'1': 'with_work', '3': 3, '4': 1, '5': 8, '10': 'withWork'},
    const {'1': 'with_user_profile', '3': 4, '4': 1, '5': 8, '10': 'withUserProfile'},
  ],
};

const WorkItemValue$json = const {
  '1': 'WorkItemValue',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    const {'1': 'actual_value', '3': 4, '4': 1, '5': 1, '10': 'actualValue'},
    const {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'work_item', '3': 6, '4': 1, '5': 11, '6': '.auge.protobuf.WorkItem', '10': 'workItem'},
  ],
};

const WorkItemValueRequest$json = const {
  '1': 'WorkItemValueRequest',
  '2': const [
    const {'1': 'work_item_value', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.WorkItemValue', '10': 'workItemValue'},
    const {'1': 'work_item_id', '3': 2, '4': 1, '5': 9, '10': 'workItemId'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkItemValueDeleteRequest$json = const {
  '1': 'WorkItemValueDeleteRequest',
  '2': const [
    const {'1': 'work_item_value_id', '3': 1, '4': 1, '5': 9, '10': 'workItemValueId'},
    const {'1': 'work_item_value_version', '3': 2, '4': 1, '5': 5, '10': 'workItemValueVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const WorkItemValuesResponse$json = const {
  '1': 'WorkItemValuesResponse',
  '2': const [
    const {'1': 'work_item_values', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.WorkItemValue', '10': 'workItemValues'},
  ],
};

const WorkItemValueGetRequest$json = const {
  '1': 'WorkItemValueGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'work_item_id', '3': 2, '4': 1, '5': 9, '10': 'workItemId'},
    const {'1': 'with_work_item', '3': 3, '4': 1, '5': 8, '10': 'withWorkItem'},
    const {'1': 'with_work', '3': 4, '4': 1, '5': 8, '10': 'withWork'},
    const {'1': 'with_user_profile', '3': 5, '4': 1, '5': 8, '10': 'withUserProfile'},
  ],
};

