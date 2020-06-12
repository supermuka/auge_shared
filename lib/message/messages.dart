import 'package:intl/intl.dart';

import 'package:auge_shared/domain/general/authorization.dart';
import 'package:auge_shared/domain/general/organization_directory_service.dart';
import 'package:auge_shared/domain/general/user_identity.dart';
import 'package:auge_shared/domain/general/group.dart';
import 'package:auge_shared/domain/work/work_stage.dart';

class CommonMsg {
  /// Commum Label
  static const String headerTitleLabel = 'headerTitleLabel';
  static const String headerSubtitleLabel = 'headerSubtitleLabel';
  static const String searchLabel = 'searchLabel';
 // static const String noCorrespondenceLabel = 'noCorrespondenceLabel';
  static const String filterLabel = 'filterLabel';
  static const String moreLabel = 'moreLabel';
  static const String emptyLabel = 'emptyLabel';
  static const selectLabel = 'selectLabel';
  static const String noMatchLabel = 'noMatchLabel';

  static String label(String label) => Intl.select(label, {
    headerTitleLabel: 'AUGE',
    headerSubtitleLabel: 'Objectives, Work and Performance',
    searchLabel: 'Search',
    filterLabel: 'Filter',
    moreLabel: 'more',
    emptyLabel: 'empty',
    selectLabel: 'Select',
    noMatchLabel: 'No Match',
    'other': 'Not Defined'},
      name: "CommonMsg_label",
      args: <String>[label],
      // locale: "en",
      desc: "Common labels",
      examples: const {"AUGE": "AUGE"}
  );

  static const String applyButtonLabel = 'applyButtonLabel';
  static const String editButtonLabel = 'editButtonLabel';
  static const String deleteButtonLabel = 'deleteButtonLabel';
  static const String saveButtonLabel = 'saveButtonLabel';
  static const String cancelButtonLabel = 'cancelButtonLabel';
  static const String closeButtonLabel = 'closeButtonLabel';
  static const String uploadButtonLabel = 'uploadButtonLabel';
  static const String clearButtonLabel = 'clearButtonLabel';
  static const String loginButtonLabel = 'loginButtonLabel';
  static const String logoutButtonLabel = 'logoutButtonLabel';
  static const String selectPhotoButtonLabel = 'selectPhotoButtonLabel';

  /// Label for edit button
  static String buttonLabel(String label) => Intl.select(label, {
        applyButtonLabel: 'Apply',
        editButtonLabel: 'Edit',
        deleteButtonLabel: 'Delete',
        saveButtonLabel: 'Save',
        cancelButtonLabel: 'Cancel',
        closeButtonLabel: 'Close',
        uploadButtonLabel: 'Upload',
        clearButtonLabel: 'Clear',
        loginButtonLabel: 'Login',
        logoutButtonLabel: 'Logout',
        selectPhotoButtonLabel: 'Select Photo',
        'other': 'Not Defined'},
      name: "CommonMsg_buttonLabel",
      args: [label],
      // locale: "en",
      desc: "Label for buttons",
      examples: const {"label": "Edit"}
  );

  static String requiredValueMsg() => Intl.message("Enter with a required value", name: "CommonMsg_requiredValueMsg");
}

class SearchFilterMsg {
  /// Commum Label
  static const String searchLabel = 'searchLabel';
  static const String filterLabel = 'filterLabel';

  static String label(String label) => Intl.select(label, {
    searchLabel: 'Search',
    filterLabel: 'Filter',
    'other': 'Not Defined'},
      name: "SearchFilterMsg_label",
      args: <String>[label],
      // locale: "en",
      desc: "Serach and Filter labels",
      examples: const {"AUGE": "AUGE"}
  );
}

/// Specific messages and labels for [Authentication and Authorization]
class AuthMsg {

  static const String domainLabel = 'domainLabel';
  static const String identificationLabel = 'identificationLabel';
  static const String passwordLabel = 'passwordLabel';
  static const String superAdminLabel = 'superAdminLabel';
  static const String organizationLabel = 'organizationLabel';
  static const String allOrganizationsLabel = 'allOrganizationsLabel';
  static const String loginLabel = 'loginLabel';
  static const String logoutLabel = 'logoutLabel';

  static const String requestCodeToNewPasswordLabel = 'requestCodeToNewPasswordLabel';
  static const String informCodeLabel = 'informCodeLabel';
  static const String defineNewPasswordLabel = 'defineNewPasswordLabel';
  static const String passwordCodeLabel = 'passwordCodeLabel';
  static const String newPasswordLabel = 'newPasswordLabel';
  static const String repeatNewPasswordLabel = 'repeatNewPasswordLabel';
  static const String saveLabel = 'saveLabel';

  /// Label for [Auth]
  static String label(String label) => Intl.select(label, {

    domainLabel: 'name@domain.com',
    identificationLabel: 'Identification',
    passwordLabel: 'Password',
    superAdminLabel: 'Super Admin',
    organizationLabel: 'Organization',
    allOrganizationsLabel: 'All Organizations',
    loginLabel: 'Login',
    logoutLabel: 'Logout',
    requestCodeToNewPasswordLabel: 'Request Code to New Password',
    informCodeLabel: 'Inform the Code',
    defineNewPasswordLabel: 'Define New Password',
    passwordCodeLabel: 'Code',
    newPasswordLabel: 'New Password',
    repeatNewPasswordLabel: 'Repeat New Password',
    saveLabel: 'Save',
    'other': 'Not Defined'},
      name: "AuthMsg_label",
      args: [label],
     // locale: "en",
      desc: "Authentication and authorizations labels",

  );

  static String informIdentificationPasswordCorrectlyMsg() => Intl.message("Inform an identification and password correctly.", name: "AuthMsg_informIdentificationPasswordCorrectlyMsg");
  static String userNotFoundMsg() => Intl.message("User account not found with the identification and password informed.", name: "AuthMsg_userNotFoundMsg");
  static String organizationNotFoundMsg() => Intl.message("An organization to user account not found.", name: "AuthMsg_organizationNotFoundMsg");
  static String serverApiErrorMsg() => Intl.message("Server not available.", name: "AuthMsg_serverApiErrorMsg");
  static String browserCompatibleErrorMsg() => Intl.message("Browser Compatible: Chrome", name: "AuthMsg_browserCompatibleErrorMsg");

  // New Password
  static String informIdentificationCorrectlyMsg() => Intl.message("Inform an identification correctly. The pattern is id@domain.", name: "AuthMsg_informIdentificationCorrectlyMsg");
  static String codeNotGeneratedMsg() => Intl.message("Code not generated.", name: "AuthMsg_codeNotGeneratedMsg");
  static String informBelowTheCodeSentToEMailMsg() => Intl.message("Inform below the code sent to e-mail", name: "AuthMsg_informBelowTheCodeSentToEMailMsg");
  static String codeValidateMsg() => Intl.message("Code validate.", name: "AuthMsg_codeValidateMsg");
  static String newPasswordSavedMsg() => Intl.message("New Password Saved.", name: "AuthMsg_newPasswordSavedMsg");
  static String passwordNotSavedMsg() => Intl.message("Password not saved.", name: "AuthMsg_passwordNotSavedMsg");

}

/// Specific messages and labels for [AppLayout]
class AppLayoutMsg {

  static const organizationLabel = 'organizationLabel';
  static const organizationsLabel = 'organizationsLabel';
  static const adminLabel = 'adminLabel';
  static const superAdminLabel = 'superAdminLabel';
  static const userDetailLabel = 'userDetailLabel';
  static const logoutLabel = 'logoutLabel';
  static const ingightsLabel = 'ingightsLabel';
  static const worksLabel = 'worksLabel';
  static const objectivesLabel = 'objectivesLabel';
  static const objectivesMapLabel = 'objectivesMapLabel';
  static const objectivesGanttLabel = 'objectivesGanttLabel';
  static const usersLabel = 'usersLabel';
  static const groupsLabel = 'groupsLabel';
  static const workItemsLabel = 'workItemsLabel';
  static const configurationLabel = 'configurationLabel';

  /// Label for [AppLayout]
  static String label(String label) => Intl.select(label, {
        organizationLabel: 'Organization',
        organizationsLabel: 'Organizations',
        adminLabel: 'Administrator',
        superAdminLabel: 'Super Administrator',
        userDetailLabel: 'User Detail',
        logoutLabel: 'Logout',
        ingightsLabel: 'Insights',
        worksLabel: 'Works',
        objectivesLabel: 'Objectives',
        objectivesMapLabel: 'Objectives Map',
        objectivesGanttLabel: 'Objectives Gantt',
        usersLabel: 'Users',
        groupsLabel: 'Groups',
        workItemsLabel: 'Work Items',
        configurationLabel: 'Configuration',
        'other': 'Not Defined'},
      name: "AppLayoutMsg_label",
      args: [label],
    //  locale: "en",
      desc: "Applayout labels",
      examples: const {"Select": "Select"}
  );
}


/// Specific messages and label for [Organization]
class OrganizationMsg {

  static const organizationsLabel = 'organizationsLabel';
  static const editOrganizationLabel = 'editOrganizationLabel';
  static const addOrganizationLabel = 'addOrganizationLabel';
  static const organizationDetailLabel = 'organizationDetailLabel';

  /// Label for organization
  static String label(String label) => Intl.select(label, {
    organizationsLabel: 'Organizations',
    editOrganizationLabel: 'Edit Organization',
    addOrganizationLabel: 'Add Organization',
    organizationDetailLabel: 'Organization Detail',
    'other': 'Not Defined'},
    name: "OrganizationMsg_label",
    args: [label],
    // locale: "en",
    desc: "Organization labels",
    examples: const {"Name": "Name"}
  );
}

/// Specific messages and label for [Configuration]
class ConfigurationMsg {

  static const configurationLabel = 'configurationLabel';
  static const serverAndAdminLabel = 'serverAndAdminLabel';
  static const groupLabel = 'groupLabel';
  static const synchronizationLabel = 'synchronizationLabel';
  static const generalLabel = 'generalLabel';
  static const directoryServiceLabel = 'directoryServiceLabel';
  static const testConnectionLabel = 'testConnectionLabel';
  static const syncAndSaveLabel = 'syncAndSaveLabel';

  /// Label for configuration
  static String label(String label) => Intl.select(label, {
    configurationLabel: 'Configuration',
    serverAndAdminLabel: 'Server and Admin',
    groupLabel: 'Group',
    synchronizationLabel: 'Synchronization',
    generalLabel: 'General',
    directoryServiceLabel: 'Directory Service',
    testConnectionLabel: 'Test Connection',
    syncAndSaveLabel: 'Sync and Save',
        'other': 'Not Defined'},
      name: "ConfigurationMsg_label",
      args: [label],
      // locale: "en",
      desc: "Configuration labels",
      examples: const {"Name": "Name"}
  );

  /// Label for status configuration
  static String statusLabel(String label) => Intl.select(label, {
        DirectoryServiceStatus.finished: 'Finished.',
        DirectoryServiceStatus.errorException: 'An exception occured.',
        DirectoryServiceStatus.errorEmailAttributeNotFound: 'Email attribute not found.',
        DirectoryServiceStatus.errorFirstNameAttributeNotFound: 'First name attribute not found.',
        DirectoryServiceStatus.errorGroupOrGroupMemberNotFound: 'Group or group member not found.',
        DirectoryServiceStatus.errorGroupFilterInvalid: 'Group filter invalid.',
        DirectoryServiceStatus.errorLastNameAttributeNotFound: 'Last name attribute not found.',
        DirectoryServiceStatus.errorIdentificationAttributeNotFound: 'Identification (login) attribute not found.',
        DirectoryServiceStatus.errorUserAttributeForGroupRelationshipNotFound: 'User attribute for group relationship not found.',
        DirectoryServiceStatus.errorNotBoundInvalidCredentials: 'Not binded. Invalid credentials.',
        DirectoryServiceStatus.errorNotConnected: 'Not connected.',
        DirectoryServiceStatus.errorUserNotFound: 'User not found.',
        'other': 'Not Defined'},
      name: "ConfigurationMsg_statusLabel",
      args: [label],
      // locale: "en",
      desc: "Status Configuration labels",
      examples: const {"Name": "Name"}
  );

  static const String baseLevel = 'baseLevel';
  static const String oneLevel = 'oneLevel';
  static const String subLevel = 'subLevel';
  static const String subordinateSubtree = 'subordinateSubtree';

  /// Label for ldap search scope level configuration
  static String searchScopeLabel(String label) => Intl.select(label, {
    baseLevel: 'Base Level',
    oneLevel: 'One Level',
    subLevel: 'Sub Level',
    subordinateSubtree: 'Subordinate Subtree',
     'other': 'Not Defined'},
    name: "ConfigurationMsg_searchScopeLabel",
    args: [label],
    // locale: "en",
    desc: "Search Scope Configuration labels",
    examples: const {"0": "Name"}
  );

  /// Label for status configuration
  static String eventSyncResultLabel(String label) => Intl.select(label, {
        DirectoryServiceEvent
            .entry: 'Entry',
        DirectoryServiceEvent
            .skipEntry: 'Skip Entry',
        DirectoryServiceEvent
            .userInsert: 'User Insert',
        DirectoryServiceEvent
            .userUpdate: 'User Update',
        DirectoryServiceEvent
            .userDelete: 'User Delete',
        DirectoryServiceEvent
            .userIdentityInsert: 'User Identity Insert',
        DirectoryServiceEvent
            .userIdentityUpdate: 'User Identity Update',
        DirectoryServiceEvent
            .userIdentityDelete: 'User Identity Delete',
        DirectoryServiceEvent
            .userAccessInsert: 'User Access Insert',
        DirectoryServiceEvent
            .userAccessUpdate: 'User Access Update',
        DirectoryServiceEvent
            .userAccessDelete: 'User Access Delete',
        'other': 'Not Defined'},
      name: "ConfigurationMsg_eventSyncResultLabel",
      args: [label],
      // locale: "en",
      desc: "Event Sync Result Configuration labels",
      examples: const {"Name": "Name"}
  );

}

/// Specific messages and label for [User]
class UserMsg {

  static const usersLabel = 'usersLabel';
  static const userLabel = 'userLabel';
  static const editUserLabel = 'editUserLabel';
  static const addUserLabel = 'addUserLabel';
  static const profileLabel = 'profileLabel';
  static const identityLabel = 'identityLabel';
  static const accessLabel = 'accessLabel';

  /// Label for user
  static String label(String label) => Intl.select(label, {
    usersLabel: 'Users',
    userLabel: 'User',
    editUserLabel: 'Edit User',
    addUserLabel: 'Add User',
    profileLabel: 'Profile',
    identityLabel: 'Identity',
    accessLabel: 'Access',
    'other': 'Not Defined'},
    name: "UserMsg_label",
    args: [label],
    // locale: "en",
    desc: "User labels",
    examples: const {"Name": "Name"}
  );

  static String domainOrganizationConfigurationRequiredMsg() => Intl.message("Domain on organization configuration is required.", name: "UserMsg_domainOrganizationConfigurationRequiredMsg");
  static String identificationRequiredMsg() => Intl.message("Identification is required.", name: "UserMsg_identificationRequiredMsg");
  static String invalidIdentificationMsg() => Intl.message("Identification format invalid. Valid format example: id@domain.com", name: "UserMsg_invalidIdentificationMsg");

}

/// Specific messages and label for [UserIdentity]
class UserIdentityMsg {

  /// Label for user
  static String label(String label) => Intl.select(label, {
        UserIdentityProvider.internal: 'Internal',
        UserIdentityProvider.directoryService: 'Directory Service',
        'other': 'Not Defined'},
      name: "UserIdentityMsg_label",
      args: [label],
      // locale: "en",
      desc: "User Identity labels",
      examples: const {"Name": "Name"}
  );
}

/// Specific messages and label for [UserAccess]
class UserAccessMsg {

  /// Label for user
  static String label(String label) => Intl.select(label, {
        SystemRole.superAdmin: 'Super Admin',
        SystemRole.admin: 'Admin',
        SystemRole.standard: 'Standard',
        'other': 'Not Defined'},
      name: "UserAccessMsg_label",
      args: [label],
      // locale: "en",
      desc: "User Organization Access labels",
      examples: const {"Name": "Name"}
  );
}


/// Specific messages and label for [Work]
class WorkMsg {

  static const String workLabel = 'workLabel';
  static const String worksLabel = 'worksLabel';
  static const String orderedByLabel = 'orderedByLabel';
  static const String editWorkLabel = 'editWorkLabel';
  static const String addWorkLabel = 'addWorkLabel';
  static const String objectiveLabel = 'objectiveLabel';
  static const String workItemsOverDueLabel = 'workItemsOverDueLabel';


  static const String worksFilterLabel = 'worksFilterLabel';

  /// Label for work
  static String label(String label) => Intl.select(label, {
    workLabel: 'Work',
    worksLabel: 'Works',
    orderedByLabel: 'Ordered By',
    editWorkLabel: 'Edit Work',
    addWorkLabel: 'Add Work',
    objectiveLabel: 'Objective',
    workItemsOverDueLabel: 'Work Items Over Due',
    worksFilterLabel: 'Works Filter',
    'other': 'Not Defined'},
      name: "WorkMsg_label",
      args: [label],
      // locale: "en",
      desc: "Work labels",
      examples: const {"Name": "Name"}
  );
}


/// Specific messages and label for [Stage]
class StageMsg {

  static const workStagesLabel = 'workStagesLabel';
  static const stageLabel = 'stageLabel';

  /// Label
  static String label(String label) => Intl.select(label, {
    workStagesLabel: 'Work Stages',
    stageLabel: 'Stage',
     'other': 'Not Defined'},
      name: "StageMsg_label",
      args: [label],
      // locale: "en",
      desc: "Stage labels"
  );

  static String stateNotInfomedMsg() => Intl.message("State not informed.", name: "StageMsg_stateNotInfomedMsg");

}

/// Specific messages and label for [State]
class StateMsg {

  /// Label
  static String label(String label) => Intl.select(label, {
        State.notStarted: 'Not Started',
        State.inProgress: 'In Progress',
        State.completed: 'Completed',
        'other': 'Not Defined'},
      name: "StateMsg_label",
      args: [label],
      // locale: "en",
      desc: "State labels"
  );
}


/// Specific messages and label for [WorkItem]
class WorkItemMsg {

  static const String workKanbanLabel = 'workKanbanLabel';
  static const String workItemsLabel = 'workItemsLabel';
  static const String workItemsFilterLabel = 'workItemsFilterLabel';
  static const String orderedByLabel = 'orderedByLabel';
  static const String editWorkItemLabel = 'editWorkItemLabel';
  static const String addWorkItemLabel = 'addWorkItemLabel';
  static const String selectAValueLabel = 'selectAValueLabel';
  static const String workItemsOverDueLabel = 'workItemsOverDueLabel';
  static const String checkItemLabel = 'checkItemLabel';
  static const String dropFileHereLabel = 'dropFileHereLabel';
  static const String plannedActualLabel = 'plannedActualLabel';
  static const String remainingValueLabel = 'remainingValueLabel';
  static const String checkItemNameLabel = 'checkItemNameLabel';
  static const String dateAndActualValueLabel = 'dateAndActualValueLabel';

  /// Label for workitem
  static String label(String label) => Intl.select(label, {
    workKanbanLabel: 'Work Kanban',
    workItemsLabel: 'Work Items',
    workItemsFilterLabel: 'Work items Filter',
    orderedByLabel: 'Ordered By',
    editWorkItemLabel: 'Edit Work Item',
    addWorkItemLabel: 'Add Work Item',
    selectAValueLabel: 'Select a value',
    workItemsOverDueLabel: 'Work Items Over Due',
    checkItemLabel: 'Check Item',
    dropFileHereLabel: 'Drop File Here',
    checkItemNameLabel: 'Check Item Name',
    plannedActualLabel: 'Planned and Actual',
    remainingValueLabel: 'Remaining Value',
    dateAndActualValueLabel: 'Date and Actual Value',
    'other': 'Not Defined'},
    name: "WorkItemMsg_label",
    args: [label],
    // locale: "en",
    desc: "Work Item labels",
    examples: const {"Name": "Name"}
  );

  static String valuePercentIntervalMsg() => Intl.message('The percentual value should be between 0 and 100', name: "WorkItemMsg_valuePercentIntervalMsg");

}


/// Specific messages and label for [Objective]
class ObjectiveMsg {

  static const String objectiveLabel = 'objectiveLabel';
  static const String objectivesLabel = 'objectivesLabel';
  static const String objectivesFilterLabel = 'objectivesFilterLabel';
  static const String addObjectiveLabel = 'addObjectiveLabel';
  static const String editObjectiveLabel = 'editObjectiveLabel';
  static const String progressLabel = 'progressLabel';
  static const String orderedByLabel = 'orderedByLabel';
  static const String ultimateObjectiveLabel = 'ultimateObjectiveLabel';
  
  /// Label for work
  static String label(String label) => Intl.select(label, {
    objectiveLabel: 'Objective',
    objectivesLabel: 'Objectives',
    objectivesFilterLabel: 'Objectives Filter',
    addObjectiveLabel: 'Add Objective',
    editObjectiveLabel: 'Edit Objective',
    progressLabel: 'Progress',
    orderedByLabel: 'Ordered By',
    ultimateObjectiveLabel: 'Ultimate Objective',
    objectivesFilterLabel: 'Objectives Filter',
    'other': 'Not Defined'},
    name: "ObjectiveMsg_label",
    args: [label],
    // locale: "en",
    desc: "Objective labels",
    examples: const {"Name": "Name"}
  );
}

/// Specific messages and label for [Map]
class MapMsg {

  static const String objectivesMapLabel = 'objectivesMapLabel';

  /// Label for work
  static String label(String label) => Intl.select(label, {
    objectivesMapLabel: 'Objectives Map',
    'other': 'Not Defined'},
    name: "MapMsg_label",
    args: [label],
    // locale: "en",
    desc: "Map labels",
    examples: const {"Leader": "Leader"}
  );

  static String notInformedMsg() => Intl.message("Not Informed!", name: "MapMsg_notInformedMsg");
}

/// Specific messages and label for [Gantt]
class GanttMsg {

  static const String objectivesGanttLabel = 'objectivesGanttLabel';
  /// Label for work
  static String label(String label) => Intl.select(label, {
    objectivesGanttLabel: 'Objectives Gantt',
        'other': 'Not Defined'},
      name: "GanttMsg_label",
      args: [label],
      // locale: "en",
      desc: "Gantt labels",
      examples: const {"Group": "Group"}
  );
}

/// Specific messages and label for [Measure]
class MeasureMsg {

  static const String measuresLabel = 'measuresLabel';
  static const String editMeasureLabel ='editMeasureLabel';
  static const String addMeasureLabel = 'addMeasureLabel';
  static const String progressLabel = 'progressLabel';
  static final String startValueLabel =  'startValueLabel';
  static final String currentValueLabel =  'currentValueLabel';
  static final String endValueLabel =  'endValueLabel';

  /// Label for Measure
  static String label(String label) => Intl.select(label, {
    measuresLabel: 'Measures',
    editMeasureLabel: 'Edit Measure',
    addMeasureLabel: 'Add Measure',
    progressLabel: 'Progress',
    startValueLabel: 'Start Value',
    currentValueLabel: 'Current Value',
    endValueLabel: 'End Value',
        'other': 'Not Defined'},
      name: "MeasureMsg_label",
      args: [label],
      // locale: "en",
      desc: "Measure labels"
  );

  static const String dayLabel = 'dayLabel';
  static const String hourLabel = 'hourLabel';
  static const String percentLabel = 'percentLabel';
  static const String moneyLabel = 'moneyLabel';
  static const String indexLabel = 'indexLabel';
  static const String unitaryLabel = 'unitaryLabel';

  /// Label for Unit of Measurement
/*
  static String UnitOfMeasurementLabel(String label) => Intl.select(label, {
        dayLabel: 'Day',
        hourLabel: 'Hour',
        percentLabel: 'Percent',
        moneyLabel: 'Money',
        indexLabel: 'Index',
        unitaryLabel: 'Unitary',
      'other': 'Not Defined'},
      name: "MeasureMsg_unitOfMeasurementLabel",
      args: [label],
      // locale: "en",
      desc: "Unit of Measurement labels"
  );
*/

  static String valueErrorMsg() => Intl.message("Incorret value. Possible reasons: a) Current value should be between Start and End Value. b) Start and End Value are equals.", name: "MeasureMsg_valueErrorMsg");
  static String currentDateNotBetweenStartEndDate(String startDateFormated, String endDateFormated) => Intl.message("Measure progress date should be between objective start date ${startDateFormated} and objective end date ${endDateFormated}.",
      name: "MeasureMsg_currentDateNotBetweenStartEndDate",
      args: [startDateFormated, endDateFormated]);
  static String decimalNumberErrorMsg() => Intl.message("Decimal number should be between 0 and 5.", name: "MeasureMsg_decimalNumberErrorMsg");
}


/// Specific messages and label for [UnitOfMeasurement]
class UnitOfMeasurementMsg {

  static const String dayLabel = 'dayLabel';
  static const String hourLabel = 'hourLabel';
  static const String percentLabel = 'percentLabel';
  static const String moneyLabel = 'moneyLabel';
  static const String indexLabel = 'indexLabel';
  static const String unitaryLabel = 'unitaryLabel';

  /// Label for Unit of Measurement
  static String unitNameLabel(String label) => Intl.select(label, {
    dayLabel: 'Day',
    hourLabel: 'Hour',
    percentLabel: 'Percent',
    moneyLabel: 'Money',
    indexLabel: 'Index',
    unitaryLabel: 'Unitary',
    'other': 'Not Defined'},
      name: "UnitOfMeasurementMsg_unitNameLabel",
      args: [label],
      // locale: "en",
      desc: "Unit of Measurement labels"
  );
}

/// Specific messages and label for [MeasureProgress]
class MeasureProgressMsg {

  static const String measureProgressLabel = 'measureProgressLabel';
  static const String measureLabel = 'measureLabel';
  static const String progressValuesLabel = 'progressValuesLabel';
  static const String valuesLabel = 'valuesLabel';
  static const String chartLabel = 'chartLabel';

  /// Label for Measure
  static String label(String label) => Intl.select(label, {
    measureLabel: 'Measure',
    valuesLabel: 'Values',
    chartLabel: 'Chart',
    measureProgressLabel: 'Measure Progress',
    progressValuesLabel: 'Progress Values',
    'other': 'Not Defined'},
    name: "MeasureProgressMsg_label",
    args: [label],
    // locale: "en",
    desc: "Measure Progresslabels"
  );

  static String valueErrorMsg() => Intl.message("Current value should be between Start and End value.", name: "MeasureProgressMsg_valueErrorMsg");
  static String currentValueExistsAtDate() => Intl.message("Current value already exists at date informed.", name: "MeasureProgressMsg_currentValueExistsAtDate");
}

/// Specific messages and label for [WorkItemValue]
class WorkItemValueMsg {

  static const String workItemValuesLabel = 'workItemValuesLabel';

  /// Label for Measure
  static String label(String label) => Intl.select(label, {
    workItemValuesLabel: 'Values',
    'other': 'Not Defined'},
      name: "WorkItemValueMsg_label",
      args: [label],
      // locale: "en",
      desc: "Work Item Value Msg"
  );

  static String valueErrorMsg() => Intl.message("Actual value must be less or equal than planned value.", name: "WorkItemValueMsg_valueErrorMsg");
  static String actualValueExistsAtDate() => Intl.message("Actual value already exists at date informed.", name: "WorkItemValueMsg_actualValueExistsAtDate");
}

/// Specific messages and label for [Group]
class GroupMsg {

  static const String groupsLabel = 'groupsLabel';
  static const String editGroupLabel = 'editGroupLabel';
  static const String addGroupLabel = 'addGroupLabel';
  static const String activeLabel = 'activeLabel';
  static const String inactiveLabel = 'inactiveLabel';

  /// Label for Group
  static String label(String label) => Intl.select(label, {
    groupsLabel: 'Groups',
    editGroupLabel: 'Edit Group',
    addGroupLabel: 'Add Group',
    activeLabel: 'Active',
    inactiveLabel: 'Inactive',
    'other': 'Not Defined'},
    name: "GroupMsg_label",
    args: [label],
    // locale: "en",
    desc: "Group labels",
  );

  /// Label for Group Type
  static String groupTypeLabel(String label) => Intl.select(label, {
        GroupType.company: 'Company',
        GroupType.businessUnit: 'Business Unit',
        GroupType.department: 'Department',
        GroupType.team: 'Team',
        'other': 'Not Defined'},
      name: "GroupMsg_groupTypeLabel",
      args: [label],
      // locale: "en",
      desc: "Group type labels"
  );
}

/// Specific messages and label for [Insight]
class InsightMsg {

  static const String insightsLabel = 'insightsLabel';
  static const String groupLabel = 'groupLabel';
  static const String leaderLabel = 'leaderLabel';
  static const String objectivesOverallLabel = 'objectivesOverallLabel';

  static const String objectivesLabel = 'objectivesLabel';
  static const String objectivesDescriptionLabel = 'objectivesDescriptionLabel';

  static const String objectivesAchievedLabel = 'objectivesAchievedLabel';
  static const String objectivesAchievedDescriptionLabel = 'objectivesAchievedDescriptionLabel';
  static const String objectivesRequiringAttentionLabel = 'objectivesRequiringAttentionLabel';
  static const String objectivesRequiringAttentionDescriptionLabel = 'objectivesRequiringAttentionDescriptionLabel';

  static const String worksLabel = 'worksLabel';
  static const String worksDescriptionLabel = 'worksDescriptionLabel';
  static const String worksCompletedLabel = 'worksCompletedLabel';
  static const String worksCompletedDescriptionLabel = 'worksCompletedDescriptionLabel';
  static const String worksRequiringAttentionLabel = 'worksRequiringAttentionLabel';
  static const String worksRequiringAttentionDescriptionLabel = 'worksRequiringAttentionDescriptionLabel';

  static const String workItemsLabel = 'workItemsLabel';
  static const String workItemsDescriptionLabel = 'workItemsDescriptionLabel';
  static const String workItemsNotStartedLabel = 'workItemsNotStartedLabel';
  static const String workItemsNotStartedDescriptionLabel = 'workItemsNotStartedDescriptionLabel';
  static const String workItemsInProgressLabel = 'workItemsInProgressLabel';
  static const String workItemsInProgressDescriptionLabel = 'workItemsInProgressDescriptionLabel';
  static const String workItemsCompletedLabel = 'workItemsCompletedLabel';
  static const String workItemsCompletedDescriptionLabel = 'workItemsCompletedDescriptionLabel';
  static const String workItemsRequiringAttentionLabel = 'workItemsRequiringAttentionLabel';
  static const String workItemsRequiringAttentionDescriptionLabel = 'workItemsRequiringAttentionDescriptionLabel';

  static const String worksMyWorkItemsLabel = 'worksMyWorkItemsLabel';

  /// Label for Insight
  static String label(String label) => Intl.select(label, {
    insightsLabel: 'Insights',
    groupLabel: 'Group',
    leaderLabel: 'Leader',

    objectivesOverallLabel: 'Objectives Overall',
    objectivesLabel: 'Objectives',

    objectivesDescriptionLabel: 'Number total of objectives',
    objectivesAchievedLabel: 'Objectives Achieved',
    objectivesAchievedDescriptionLabel: 'Objectives with average measures above 70%',
    objectivesRequiringAttentionDescriptionLabel: 'Objectives with average measures below 30%',
    objectivesRequiringAttentionLabel: 'Objectives Requiring Attention',

    worksLabel: 'Works',
    worksDescriptionLabel: 'Total of works',
    worksCompletedLabel: 'Works Completed',
    worksCompletedDescriptionLabel: 'Works with 100% work items completed',
    worksRequiringAttentionLabel: 'Works Requiring Attention',
    worksRequiringAttentionDescriptionLabel: 'Works with over due work items',
    workItemsLabel: 'Work Items',
    workItemsDescriptionLabel: 'Total of work items',
    workItemsNotStartedLabel: 'Work Items Not Started',
    workItemsNotStartedDescriptionLabel: 'Work items in the not started state',
    workItemsInProgressLabel: 'Work Items in Progress',
    workItemsInProgressDescriptionLabel: 'Work items in the in progress state',
    workItemsCompletedLabel: 'Work Items Completed',
    workItemsCompletedDescriptionLabel: 'Work items in the completed state',
    workItemsRequiringAttentionLabel: 'Work Items Requiring Attention',
    workItemsRequiringAttentionDescriptionLabel: 'Over due work items',

    worksMyWorkItemsLabel: 'My Work Items',
    'other': 'Not Defined'},
    name: "InsightMsg_label",
    args: [label],
    // locale: "en",
    desc: "Insight labels",
  );
}

/// Specific messages and label for [SystemModule]
class SystemModuleMsg {

  /// Label
  static String label(String moduleName) => Intl.select(moduleName, {
    SystemModule.groups: 'Groups',
    SystemModule.users: 'Users',
    SystemModule.user_profile: 'User Profile',
    SystemModule.objectives: 'Objectives',
    SystemModule.organization: 'Organization',
    SystemModule.works: 'Works',
    'other': 'Not Defined'},
    name: "SystemModuleMsg_label",
    args: [moduleName],
    // locale: "en",
    desc: "System Module labels",
  );
}

/// Specific messages and label for [SystemFunction]
class SystemFunctionMsg {

  /// Label in past
  static String inPastLabel(String functionName) => Intl.select(functionName, {
      SystemFunction.create: 'Created',
      SystemFunction.update: 'Updated',
      SystemFunction.delete: 'Deleted',
      SystemFunction.read: 'Read',
      'other': 'Not Defined'},
    name: "SystemFunctionMsg_inPastLabel",
    args: [functionName],
    // locale: "en",
    desc: "System Function labels",
  );
}

/// Specific messages and label for [Timeline] class field
class TimelineMsg {

  static const String timelineLabel = 'timelineLabel';
  static const String dayAgoLabel = 'dayAgoLabel';
  static const String daysAgoLabel = 'daysAgoLabel';
  static const String hourAgoLabel = 'hourAgoLabel';
  static const String hoursAgoLabel = 'hoursAgoLabel';
  static const String minuteAgoLabel = 'minuteAgoLabel';
  static const String minutesAgoLabel = 'minutesAgoLabel';
  static const String secondAgoLabel = 'secondAgoLabel';
  static const String secondsAgoLabel = 'secondsAgoLabel';
  static const String valueLabel = 'valueLabel';
  static const String changedFromLabel = 'changedFromLabel';
  static const String wasLabel = 'wasLabel';
  static const String allLabel = 'allLabel';
  static const String selectModuleLabel = 'selectModuleLabel';
  static const String noNewRecordsLabel = 'noNewRecordsLabel';
  static const String newRecordsLabel = 'newRecordsLabel';
  static const String loadMoreLabel = 'loadMoreLabel';

  /// Label
  static String label(String fieldName) => Intl.select(fieldName, {
    timelineLabel: 'Timeline',
    dayAgoLabel: 'day ago',
    daysAgoLabel: 'days ago',
    hourAgoLabel: 'hour ago',
    hoursAgoLabel: 'hours ago',
    minuteAgoLabel: 'minute ago',
    minutesAgoLabel: 'minutes ago',
    secondAgoLabel: 'second ago',
    secondsAgoLabel: 'seconds ago',
    valueLabel: 'value',
    changedFromLabel: 'changed from',
    wasLabel: 'was',
    allLabel: 'All',
    selectModuleLabel: 'Select module',
    noNewRecordsLabel: 'No New Records',
    newRecordsLabel: 'New Records',
    loadMoreLabel: 'Load More',
    'other': 'Not Defined'},
    name: "TimelineMsg_label",
    args: [fieldName],
    // locale: "en",
    desc: "TimelineItem labels",
  );
}

/// Specific messages and label for [MailMsg] class field
class MailMsg {

  static const String ofTheLabel = 'ofTheLabel';
  static const String thisLabel = 'thisLabel';
  static const String notificationLabel = 'notificationLabel';

  /// Label
  static String label(String label) => Intl.select(label, {
    notificationLabel: 'Notification',
    ofTheLabel: 'of the',
    thisLabel: 'this',
    'other': 'Not Defined'},
    name: "MailMsg_label",
    args: [label],
    // locale: "en",
    desc: "MailMsg labels",
  );

  /// Message to Notification
  static String youIsReceivingThisEMailBecauseYouAreThe() => Intl.message('You are receiving this e-mail because you are the', name: "MailMsg_youIsReceivingThisEMailBecauseYouAreThe");
  static String viewOrReplyIt() => Intl.message('View or reply it on Auge', name: "MailMsg_viewOrReplyIt");

  /// Message to New Password
  static String toDefineNewPasswordInformTheCode() => Intl.message("To define new password inform the code", name: "MailMsg_toDefineNewPasswordInformTheCode");

  static String youIsReceivingThisEMailBecauseNewPasswordWasRequired() => Intl.message("You are receiving this e-mail because new password was required. Ignore this e-mail if you didn't request new password.", name: "MailMsg_youIsReceivingThisEMailBecauseNewPasswordWasRequired");
  static String subjectNewPasswordRequired() => Intl.message('New Password Required', name: "MailMsg_subjectNewPasswordRequired");
  static String InformIt() => Intl.message('Inform it on Auge', name: "MailMsg_InformIt");


}