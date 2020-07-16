// Copyright (c) 2019, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/src/util/common_utils.dart';
import 'package:auge_shared/domain/general/organization.dart';
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/general/organization_directory_service.pb.dart' as organization_directory_service_pb;

enum DirectoryServiceStatus {
  finished,
  errorException,
  errorNotConnected,
  errorNotBoundInvalidCredentials,
  errorGroupFilterInvalid,
  errorGroupOrGroupMemberNotFound,
  errorUserNotFound,
  errorUserFilterInvalid,
  errorProviderObjectIdAttributeNotFound,
  errorIdentificationAttributeNotFound,
  errorEmailAttributeNotFound,
  errorFirstNameAttributeNotFound,
  errorLastNameAttributeNotFound,
  errorUserAttributeForGroupRelationshipNotFound,
  errorUserAttributeValueForGroupRelationshipNotFound
}

enum DirectoryServiceEvent {
  entry,
  skipEntry,
  userInsert,
  userUpdate,
  userDelete,
  userIdentityInsert,
  userIdentityUpdate,
  userIdentityDelete,
  userAccessInsert,
  userAccessUpdate,
  userAccessDelete,
}

enum ListSearchScope {baseLevel, oneLevel, subLevel, subordinateSubtree} // 'BASE_LEVEL', 'ONE_LEVEL', 'SUB_LEVEL', 'SUBORDINATE_SUBTREE'

/// Domain model class to represent a directory services
class OrganizationDirectoryService {
  static const String className = 'OrganizationDirectoryService';

  // Base fields
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // CONNECTION
  static const String directoryServiceEnabledField = 'directoryServiceEnabled';
  bool directoryServiceEnabled;
  static const String hostAddressField = 'hostAddress';
  String hostAddress;
  static const String portField = 'port';
  int port;
  static const String sslTlsField = 'sslTls';
  bool sslTls;
  static const String syncBindDnField = 'syncBindDn';
  String syncBindDn;
  static const String syncBindPasswordField = 'syncBindPassword';
  String syncBindPassword;
  static const String syncIntervalField = 'syncInterval';
  int syncInterval;
  static const String syncLastDateTimeField = 'syncLastDateTime';
  DateTime syncLastDateTime;
  static const String syncLastResultField = 'syncLastResult';
  String syncLastResult;

  // GROUP
  static const String groupSearchDNField = 'groupSearchDN';
  String groupSearchDN;
  static const String groupSearchScopeField = 'groupSearchScope';
  int groupSearchScope;
  static const String groupSearchFilterField = 'groupSearchFilter';
  String groupSearchFilter;
  static const String groupMemberUserAttributeField = 'groupMemberUserAttribute'; // The attribute of the group that will be used to filter against the User Attribute
  String groupMemberUserAttribute;

  // USER
  static const String userSearchDNField = 'userSearchDN';
  String userSearchDN;
  static const String userSearchScopeField = 'userSearchScope';
  int userSearchScope;
  static const String userSearchFilterField = 'userSearchFilter';
  String userSearchFilter;
  // AD objectGUID or OpenLDAP entryUUID
  static const String userProviderObjectIdAttributeField = 'userProviderObjectIdAttribute';
  String userProviderObjectIdAttribute;
  // AD samAccountName / UserPrincipalName or OpenLDAP uid
  static const String userIdentificationAttributeField = 'userIdentificationAttribute';
  String userIdentificationAttribute;
  static const String userEmailAttributeField = 'userEmailAttribute';
  String userEmailAttribute;
  static const String userFirstNameAttributeField = 'userFirstNameAttribute';
  String userFirstNameAttribute;
  static const String userLastNameAttributeField = 'userLastNameAttribute';
  String userLastNameAttribute;
  static const String userAttributeForGroupRelationshipField = 'userAttributeForGroupRelationship'; //  A unique identifier used to check if the user is a member of the group
  String userAttributeForGroupRelationship;

  static const String organizationField = 'organization';
  Organization organization;



  /*
  static Map<String, dynamic> fromProtoBufToModelMap(organization_directory_service_pb.OrganizationDirectoryService organizationDirectoryServicePb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
  Map<String, dynamic> map = {};

  if (onlyIdAndSpecificationForDepthFields && isDeep) {

    if (organizationDirectoryServicePb.hasId()) {
      map[OrganizationDirectoryService.idField] =
          organizationDirectoryServicePb.id;
    }
  } else {
    if (organizationDirectoryServicePb.hasId()) {
      map[OrganizationDirectoryService.idField] =
          organizationDirectoryServicePb.id;
    }

    if (organizationDirectoryServicePb.hasHostAddress()) {
      map[OrganizationDirectoryService.hostAddressField] =
        organizationDirectoryServicePb.hostAddress;
    }

    if (organizationDirectoryServicePb.hasPort()) {
      map[OrganizationDirectoryService.portField] =
        organizationDirectoryServicePb.port;
    }

    if (organizationDirectoryServicePb.hasSslTls()) {
      map[OrganizationDirectoryService.sslTlsField] =
        organizationDirectoryServicePb.sslTls;
    }

    if (organizationDirectoryServicePb.hasSyncBindDn()) {
      map[OrganizationDirectoryService.syncBindDnField] =
        organizationDirectoryServicePb.syncBindDn;
    }

    if (organizationDirectoryServicePb.hasSyncBindPassword()) {
      map[OrganizationDirectoryService.syncBindPasswordField] =
        organizationDirectoryServicePb.syncBindPassword;
    }

    if (organizationDirectoryServicePb.hasSyncInterval()) {
      map[OrganizationDirectoryService.syncIntervalField] =
        organizationDirectoryServicePb.syncInterval;
    }

    if (organizationDirectoryServicePb.hasSyncLastDateTime()) {
      map[OrganizationDirectoryService.syncLastDateTimeField] =
        organizationDirectoryServicePb.syncLastDateTime;
    }

    if (organizationDirectoryServicePb.hasSyncLastResult()) {
      map[OrganizationDirectoryService.syncLastResultField] =
        organizationDirectoryServicePb.syncLastResult;
    }

    if (organizationDirectoryServicePb.hasGroupSearchDN()) {
      map[OrganizationDirectoryService.groupSearchDNField] =
        organizationDirectoryServicePb.groupSearchDN;
    }

    if (organizationDirectoryServicePb.hasGroupSearchScope()) {
      map[OrganizationDirectoryService.groupSearchScopeField] =
        organizationDirectoryServicePb.groupSearchFilter;
    }

    if (organizationDirectoryServicePb.hasGroupMemberUserAttribute()) {
      map[OrganizationDirectoryService.groupMemberUserAttributeField] =
        organizationDirectoryServicePb.groupMemberUserAttribute;
    }

    if (organizationDirectoryServicePb.hasUserAttributeForGroupRelationship()) {
      map[OrganizationDirectoryService.userAttributeForGroupRelationshipField] =
        organizationDirectoryServicePb.userAttributeForGroupRelationship;
    }

    if (organizationDirectoryServicePb.hasUserSearchDN()) {
      map[OrganizationDirectoryService.userSearchDNField] =
        organizationDirectoryServicePb.userSearchDN;
    }

    if (organizationDirectoryServicePb.hasUserSearchScope()) {
      map[OrganizationDirectoryService.userSearchScopeField] =
        organizationDirectoryServicePb.userSearchScope;
    }

    if (organizationDirectoryServicePb.hasUserSearchFilter()) {
      map[OrganizationDirectoryService.userSearchFilterField] =
        organizationDirectoryServicePb.userSearchFilter;
    }

    if (organizationDirectoryServicePb.hasUserProviderObjectIdAttribute()) {
      map[OrganizationDirectoryService.userProviderObjectIdAttributeField] =
        organizationDirectoryServicePb.userProviderObjectIdAttribute;
    }

    if (organizationDirectoryServicePb.hasUserIdentificationAttribute()) {
      map[OrganizationDirectoryService.userIdentificationAttributeField] =
        organizationDirectoryServicePb.userIdentificationAttribute;
    }

    if (organizationDirectoryServicePb.hasUserFirstNameAttribute()) {
      map[OrganizationDirectoryService.userFirstNameAttributeField] =
        organizationDirectoryServicePb.userFirstNameAttribute;
    }

    if (organizationDirectoryServicePb.hasUserLastNameAttribute()) {
      map[OrganizationDirectoryService.userLastNameAttributeField] =
        organizationDirectoryServicePb.userLastNameAttribute;
    }

    if (organizationDirectoryServicePb.hasUserEmailAttribute()) {
      map[OrganizationDirectoryService.userEmailAttributeField] =
        organizationDirectoryServicePb.userEmailAttribute;
    }

    if (organizationDirectoryServicePb.hasOrganization()) {
      map[OrganizationDirectoryService.organizationField] =
          Organization.fromProtoBufToModelMap(
              organizationDirectoryServicePb.organization, onlyIdAndSpecificationForDepthFields, true);
    }

    }
    return map;
  }
  */
}

class OrganizationDirectoryServiceHelper {

  static organization_directory_service_pb.OrganizationDirectoryService writeToProtoBuf(OrganizationDirectoryService organizationDirectoryService) {
    organization_directory_service_pb.OrganizationDirectoryService organizationDirectoryServicePb = organization_directory_service_pb.OrganizationDirectoryService();

      if (organizationDirectoryService.organization != null)
        organizationDirectoryServicePb.organization =
            OrganizationHelper.writeToProtoBuf(
                organizationDirectoryService.organization);
    if (organizationDirectoryService.hostAddress != null)
      organizationDirectoryServicePb.hostAddress =
          organizationDirectoryService.hostAddress;
    if (organizationDirectoryService.port != null)
      organizationDirectoryServicePb.port = organizationDirectoryService.port;
      if (organizationDirectoryService.directoryServiceEnabled != null)
        organizationDirectoryServicePb.directoryServiceEnabled =
            organizationDirectoryService.directoryServiceEnabled;
    if (organizationDirectoryService.sslTls != null)
      organizationDirectoryServicePb.sslTls =
          organizationDirectoryService.sslTls;
    if (organizationDirectoryService.syncBindDn != null)
      organizationDirectoryServicePb.syncBindDn =
          organizationDirectoryService.syncBindDn;
    if (organizationDirectoryService.syncBindPassword != null)
      organizationDirectoryServicePb.syncBindPassword =
          organizationDirectoryService.syncBindPassword;
    if (organizationDirectoryService.syncInterval != null)
      organizationDirectoryServicePb.syncInterval =
          organizationDirectoryService.syncInterval;
    if (organizationDirectoryService.syncLastDateTime != null)
      organizationDirectoryServicePb.syncLastDateTime =
          CommonUtils.timestampFromDateTime(
              organizationDirectoryService.syncLastDateTime);
    if (organizationDirectoryService.syncLastResult != null)
      organizationDirectoryServicePb.syncLastResult =
          organizationDirectoryService.syncLastResult;
    if (organizationDirectoryService.groupSearchDN != null)
      organizationDirectoryServicePb.groupSearchDN =
          organizationDirectoryService.groupSearchDN;
    if (organizationDirectoryService.groupSearchScope != null)
      organizationDirectoryServicePb.groupSearchScope =
          organizationDirectoryService.groupSearchScope;
    if (organizationDirectoryService.groupSearchFilter != null)
      organizationDirectoryServicePb.groupSearchFilter =
          organizationDirectoryService.groupSearchFilter;
    if (organizationDirectoryService.groupMemberUserAttribute != null)
      organizationDirectoryServicePb.groupMemberUserAttribute =
          organizationDirectoryService.groupMemberUserAttribute;
    if (organizationDirectoryService.userAttributeForGroupRelationship !=
        null)
      organizationDirectoryServicePb.userAttributeForGroupRelationship =
          organizationDirectoryService.userAttributeForGroupRelationship;
    if (organizationDirectoryService.userSearchDN != null)
      organizationDirectoryServicePb.userSearchDN =
          organizationDirectoryService.userSearchDN;
    if (organizationDirectoryService.userSearchScope != null)
      organizationDirectoryServicePb.userSearchScope =
          organizationDirectoryService.userSearchScope;
    if (organizationDirectoryService.userSearchFilter != null)
      organizationDirectoryServicePb.userSearchFilter =
          organizationDirectoryService.userSearchFilter;
    if (organizationDirectoryService.userProviderObjectIdAttribute != null)
      organizationDirectoryServicePb.userProviderObjectIdAttribute =
          organizationDirectoryService.userProviderObjectIdAttribute;
    if (organizationDirectoryService.userIdentificationAttribute != null)
      organizationDirectoryServicePb.userIdentificationAttribute =
          organizationDirectoryService.userIdentificationAttribute;
    if (organizationDirectoryService.userFirstNameAttribute != null)
      organizationDirectoryServicePb.userFirstNameAttribute =
          organizationDirectoryService.userFirstNameAttribute;
    if (organizationDirectoryService.userLastNameAttribute != null)
      organizationDirectoryServicePb.userLastNameAttribute =
          organizationDirectoryService.userLastNameAttribute;
    if (organizationDirectoryService.userEmailAttribute != null)
      organizationDirectoryServicePb.userEmailAttribute =
          organizationDirectoryService.userEmailAttribute;

    return organizationDirectoryServicePb;
  }

  static OrganizationDirectoryService readFromProtoBuf(organization_directory_service_pb.OrganizationDirectoryService organizationDirectoryServicePb) {
    OrganizationDirectoryService organizationDirectoryService = OrganizationDirectoryService();


    if (organizationDirectoryServicePb.hasDirectoryServiceEnabled()) organizationDirectoryService.directoryServiceEnabled = organizationDirectoryServicePb.directoryServiceEnabled;
    if (organizationDirectoryServicePb.hasHostAddress()) organizationDirectoryService.hostAddress = organizationDirectoryServicePb.hostAddress;
    if (organizationDirectoryServicePb.hasPort()) organizationDirectoryService.port = organizationDirectoryServicePb.port;
    if (organizationDirectoryServicePb.hasSslTls()) organizationDirectoryService.sslTls = organizationDirectoryServicePb.sslTls;
    if (organizationDirectoryServicePb.hasSyncBindDn()) organizationDirectoryService.syncBindDn = organizationDirectoryServicePb.syncBindDn;
    if (organizationDirectoryServicePb.hasSyncBindPassword()) organizationDirectoryService.syncBindPassword = organizationDirectoryServicePb.syncBindPassword;
    if (organizationDirectoryServicePb.hasSyncInterval()) organizationDirectoryService.syncInterval = organizationDirectoryServicePb.syncInterval;
    // if (organizationDirectoryServicePb.hasSyncLastDateTime()) this.syncLastDateTime = CommonUtils.dateTimeFromTimestamp(organizationDirectoryServicePb.syncLastDateTime);
    if (organizationDirectoryServicePb.hasSyncLastDateTime()) organizationDirectoryService.syncLastDateTime = organizationDirectoryServicePb.syncLastDateTime.toDateTime();
    if (organizationDirectoryServicePb.hasSyncLastResult()) organizationDirectoryService.syncLastResult = organizationDirectoryServicePb.syncLastResult;
    if (organizationDirectoryServicePb.hasGroupSearchDN()) organizationDirectoryService.groupSearchDN = organizationDirectoryServicePb.groupSearchDN;
    if (organizationDirectoryServicePb.hasGroupSearchScope()) organizationDirectoryService.groupSearchScope = organizationDirectoryServicePb.groupSearchScope;
    if (organizationDirectoryServicePb.hasGroupSearchFilter()) organizationDirectoryService.groupSearchFilter = organizationDirectoryServicePb.groupSearchFilter;
    if (organizationDirectoryServicePb.hasGroupMemberUserAttribute()) organizationDirectoryService.groupMemberUserAttribute = organizationDirectoryServicePb.groupMemberUserAttribute;
    if (organizationDirectoryServicePb.hasUserAttributeForGroupRelationship()) organizationDirectoryService.userAttributeForGroupRelationship = organizationDirectoryServicePb.userAttributeForGroupRelationship;
    if (organizationDirectoryServicePb.hasUserSearchDN()) organizationDirectoryService.userSearchDN = organizationDirectoryServicePb.userSearchDN;
    if (organizationDirectoryServicePb.hasUserSearchScope()) organizationDirectoryService.userSearchScope = organizationDirectoryServicePb.userSearchScope;
    if (organizationDirectoryServicePb.hasUserSearchFilter()) organizationDirectoryService.userSearchFilter = organizationDirectoryServicePb.userSearchFilter;
    if (organizationDirectoryServicePb.hasUserProviderObjectIdAttribute()) organizationDirectoryService.userProviderObjectIdAttribute = organizationDirectoryServicePb.userProviderObjectIdAttribute;
    if (organizationDirectoryServicePb.hasUserIdentificationAttribute()) organizationDirectoryService.userIdentificationAttribute = organizationDirectoryServicePb.userIdentificationAttribute;
    if (organizationDirectoryServicePb.hasUserFirstNameAttribute()) organizationDirectoryService.userFirstNameAttribute = organizationDirectoryServicePb.userFirstNameAttribute;
    if (organizationDirectoryServicePb.hasUserLastNameAttribute()) organizationDirectoryService.userLastNameAttribute = organizationDirectoryServicePb.userLastNameAttribute;
    if (organizationDirectoryServicePb.hasUserEmailAttribute()) organizationDirectoryService.userEmailAttribute = organizationDirectoryServicePb.userEmailAttribute;
    if (organizationDirectoryServicePb.hasOrganization()) organizationDirectoryService.organization = OrganizationHelper.readFromProtoBuf(organizationDirectoryServicePb.organization); // No need cache, normally it has just one instance.

    return organizationDirectoryService;
  }

}