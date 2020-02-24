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
  static const String syncIntervalField = 'sync';
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


  organization_directory_service_pb.OrganizationDirectoryService writeToProtoBuf() {
    organization_directory_service_pb.OrganizationDirectoryService organizationDirectoryServicePb = organization_directory_service_pb.OrganizationDirectoryService();


    if (directoryServiceEnabled != null) organizationDirectoryServicePb.directoryServiceEnabled = directoryServiceEnabled;
    if (hostAddress != null) organizationDirectoryServicePb.hostAddress = hostAddress;
    if (port != null) organizationDirectoryServicePb.port = port;
    if (sslTls != null) organizationDirectoryServicePb.sslTls = sslTls;
    if (syncBindDn != null) organizationDirectoryServicePb.syncBindDn = syncBindDn;
    if (syncBindPassword != null) organizationDirectoryServicePb.syncBindPassword = syncBindPassword;
    if (syncInterval != null) organizationDirectoryServicePb.syncInterval = syncInterval;
    if (syncLastDateTime != null) organizationDirectoryServicePb.syncLastDateTime = CommonUtils.timestampFromDateTime(syncLastDateTime);
    if (syncLastResult != null) organizationDirectoryServicePb.syncLastResult = syncLastResult;
    if (groupSearchDN != null) organizationDirectoryServicePb.groupSearchDN = groupSearchDN;
    if (groupSearchScope != null) organizationDirectoryServicePb.groupSearchScope = groupSearchScope;
    if (groupSearchFilter != null) organizationDirectoryServicePb.groupSearchFilter = groupSearchFilter;
    if (groupMemberUserAttribute != null) organizationDirectoryServicePb.groupMemberUserAttribute = groupMemberUserAttribute;
    if (userAttributeForGroupRelationship != null) organizationDirectoryServicePb.userAttributeForGroupRelationship = userAttributeForGroupRelationship;
    if (userSearchDN != null) organizationDirectoryServicePb.userSearchDN = userSearchDN;
    if (userSearchScope != null) organizationDirectoryServicePb.userSearchScope = userSearchScope;
    if (userSearchFilter != null) organizationDirectoryServicePb.userSearchFilter = userSearchFilter;
    if (userProviderObjectIdAttribute != null) organizationDirectoryServicePb.userProviderObjectIdAttribute = userProviderObjectIdAttribute;
    if (userIdentificationAttribute != null) organizationDirectoryServicePb.userIdentificationAttribute = userIdentificationAttribute;
    if (userFirstNameAttribute != null) organizationDirectoryServicePb.userFirstNameAttribute = userFirstNameAttribute;
    if (userLastNameAttribute != null) organizationDirectoryServicePb.userLastNameAttribute = userLastNameAttribute;
    if (userEmailAttribute != null) organizationDirectoryServicePb.userEmailAttribute = userEmailAttribute;
    if (organization != null) organizationDirectoryServicePb.organization = organization.writeToProtoBuf();

    return organizationDirectoryServicePb;
  }

  void readFromProtoBuf(organization_directory_service_pb.OrganizationDirectoryService organizationDirectoryServicePb) {

    if (organizationDirectoryServicePb.hasDirectoryServiceEnabled()) directoryServiceEnabled = organizationDirectoryServicePb.directoryServiceEnabled;
    if (organizationDirectoryServicePb.hasHostAddress()) hostAddress = organizationDirectoryServicePb.hostAddress;
    if (organizationDirectoryServicePb.hasPort()) port = organizationDirectoryServicePb.port;
    if (organizationDirectoryServicePb.hasSslTls()) sslTls = organizationDirectoryServicePb.sslTls;
    if (organizationDirectoryServicePb.hasSyncBindDn()) syncBindDn = organizationDirectoryServicePb.syncBindDn;
    if (organizationDirectoryServicePb.hasSyncBindPassword()) syncBindPassword = organizationDirectoryServicePb.syncBindPassword;
    if (organizationDirectoryServicePb.hasSyncInterval()) syncInterval = organizationDirectoryServicePb.syncInterval;
   // if (organizationDirectoryServicePb.hasSyncLastDateTime()) this.syncLastDateTime = CommonUtils.dateTimeFromTimestamp(organizationDirectoryServicePb.syncLastDateTime);
    if (organizationDirectoryServicePb.hasSyncLastDateTime()) syncLastDateTime = organizationDirectoryServicePb.syncLastDateTime.toDateTime();
    if (organizationDirectoryServicePb.hasSyncLastResult()) syncLastResult = organizationDirectoryServicePb.syncLastResult;
    if (organizationDirectoryServicePb.hasGroupSearchDN()) groupSearchDN = organizationDirectoryServicePb.groupSearchDN;
    if (organizationDirectoryServicePb.hasGroupSearchScope()) groupSearchScope = organizationDirectoryServicePb.groupSearchScope;
    if (organizationDirectoryServicePb.hasGroupSearchFilter()) groupSearchFilter = organizationDirectoryServicePb.groupSearchFilter;
    if (organizationDirectoryServicePb.hasGroupMemberUserAttribute()) groupMemberUserAttribute = organizationDirectoryServicePb.groupMemberUserAttribute;
    if (organizationDirectoryServicePb.hasUserAttributeForGroupRelationship()) userAttributeForGroupRelationship = organizationDirectoryServicePb.userAttributeForGroupRelationship;
    if (organizationDirectoryServicePb.hasUserSearchDN()) userSearchDN = organizationDirectoryServicePb.userSearchDN;
    if (organizationDirectoryServicePb.hasUserSearchScope()) userSearchScope = organizationDirectoryServicePb.userSearchScope;
    if (organizationDirectoryServicePb.hasUserSearchFilter()) userSearchFilter = organizationDirectoryServicePb.userSearchFilter;
    if (organizationDirectoryServicePb.hasUserProviderObjectIdAttribute()) userProviderObjectIdAttribute = organizationDirectoryServicePb.userProviderObjectIdAttribute;
    if (organizationDirectoryServicePb.hasUserIdentificationAttribute()) userIdentificationAttribute = organizationDirectoryServicePb.userIdentificationAttribute;
    if (organizationDirectoryServicePb.hasUserFirstNameAttribute()) userFirstNameAttribute = organizationDirectoryServicePb.userFirstNameAttribute;
    if (organizationDirectoryServicePb.hasUserLastNameAttribute()) userLastNameAttribute = organizationDirectoryServicePb.userLastNameAttribute;
    if (organizationDirectoryServicePb.hasUserEmailAttribute()) userEmailAttribute = organizationDirectoryServicePb.userEmailAttribute;
    if (organizationDirectoryServicePb.hasOrganization()) organization = Organization()..readFromProtoBuf(organizationDirectoryServicePb.organization); // No need cache, normally it has just one instance.

  }

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
}