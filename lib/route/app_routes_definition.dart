String appUrlDefault = 'https://auge.levius.com.br';

class AppRoutesParam {
  //Params
  static const organizationIdParameter = 'organization_id';
  static const userIdParameter = 'user_id';
  static const groupIdParameter = 'group_id';
  static const measureIdParameter = 'measure_id';
  static const workIdParameter = 'work_id';
  static const workItemIdParameter = 'work_item_id';
  static const objectiveIdParameter = 'objective_id';
}

class AppRoutesQueryParam {
  //QueryParam
  static const organizationIdQueryParameter = 'organization_id';
  static const workIdQueryParameter = 'work_id';
  static const workItemIdQueryParameter = 'work_item_id';
  static const stageIdQueryParameter = 'stage_id';
  static const objectiveIdQueryParameter = 'objective_id';
  static const groupIdsQueryParameter = 'group_ids';
  static const leaderUserIdsQueryParameter = 'leader_user_ids';
  static const objectiveStartDateQueryParameter = 'objective_start_date';
  static const objectiveEndDateQueryParameter = 'objective_end_date';
  static const measureCurrentValueQueryParameter = 'measure_current_value';
  static const workItemActualValueQueryParameter = 'work_item_actual_value';

  static const filter = 'filter';
}

class AppRoutesPath {
  // Path
  static const authRoutePath = 'auth';
  static const appLayoutRoutePath = 'app';
  static const insightslRoutePath = 'insights';
  static const usersRoutePath =  'users';
  static const mapRoutePath = 'map';
  static const ganttRoutePath = 'gantt';
  static const worksRoutePath = 'works';
  static const workAddRoutePath = 'add';
  static const workEditRoutePath = ':${AppRoutesParam.workIdParameter}/edit';
  static const workItemsKanbanRoute = 'works/:${AppRoutesParam.workIdParameter}/kanban_work_items';
  static const workItemsKanbanViaObjectiveRoute = 'objectives/:${AppRoutesParam.objectiveIdParameter}/works/:${AppRoutesParam.workIdParameter}/kanban_work_items';
  static const workStagesRoutePath = ':${AppRoutesParam.workIdParameter}/stages';
  static const worksByObjectiveRoutePath = 'works/:${AppRoutesParam.objectiveIdParameter}';
  static const objectivesRoutePath = 'objectives';
  static const objectivesFilterRoutePath = 'filter';
  static const measuresRoutePath = 'objectives/:${AppRoutesParam.objectiveIdParameter}/measures';
  static const organizationRoutePath = 'organizations/:${AppRoutesParam.organizationIdParameter}';
  static const groupsRoutePath = 'groups';
  static const groupAddRoutePath = 'add';
  static const groupEditRoutePath = ':${AppRoutesParam.groupIdParameter}/edit';
  static const measureAddRoutePath = ':${AppRoutesParam.objectiveIdParameter}/measures/add';
  static const measureEditRoutePath = ':${AppRoutesParam.objectiveIdParameter}/measures/:${AppRoutesParam.measureIdParameter}/edit';
  static const measureProgressesRoutePath = ':${AppRoutesParam.objectiveIdParameter}/measures/:${AppRoutesParam.measureIdParameter}/progresses';
  static const measureProgressesAddRoutePath = ':${AppRoutesParam.objectiveIdParameter}/measures/:${AppRoutesParam.measureIdParameter}/progresses/add';
  static const objectiveAddRoutePath = 'add';
  static const objectiveEditRoutePath = ':${AppRoutesParam.objectiveIdParameter}/edit';
  static const workItemAddRoutePath = ':${AppRoutesParam.workIdParameter}/work_items/add';
  static const workItemEditRoutePath = ':${AppRoutesParam.workIdParameter}/work_items/:${AppRoutesParam.workItemIdParameter}/edit';
  static const workItemKanbanAddRoutePath = 'add';
  static const workItemKanbanEditRoutePath = ':${AppRoutesParam.workItemIdParameter}/edit';
  static const userAddRoutePath = 'add';
  static const userEditRoutePath = ':${AppRoutesParam.userIdParameter}/edit';
  static const userEditWithAppLayoutParentRoutePath = 'users/:${AppRoutesParam.userIdParameter}/auth/edit';
  static const historyRoutePath = 'history';
}

/// Complete url (parent + path)
/// It is used to server side, for not used lib based on html.
/*
class AppRoutesUrl {

  static const objectivesRouteUrl = '${AppRoutesPath.appLayoutRoutePath}/${AppRoutesPath.objectivesRoutePath}';
  
}
*/