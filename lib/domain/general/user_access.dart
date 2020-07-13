// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/domain/general/user.dart';
import 'package:auge_shared/domain/general/organization.dart';

// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/general/user_access.pb.dart' as user_access_pb;

/// Domain model class to represent a relationship between users and organizations
class UserAccess {
  static const String className = 'UserAccess';

  // Base fields
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // Specific fields
  static const String userField = 'user';
  User user;
  static const String organizationField = 'organization';
  Organization organization;
  static const String accessRoleField = 'accessRole';
  int accessRole;

  UserAccess() {
    user = User();
    organization = Organization();
  }


  /*
  static Map<String, dynamic> fromProtoBufToModelMap(user_access_pb.UserAccess userAccessPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (userAccessPb.hasId()) {
        map[UserAccess.idField] = userAccessPb.id;
      }
      if (userAccessPb.hasUser()) {
        map[UserAccess.userField] =
            User.fromProtoBufToModelMap(userAccessPb.user, onlyIdAndSpecificationForDepthFields, true);
      }
      if (userAccessPb.hasOrganization()) {
        map[UserAccess.organizationField] =
            Organization.fromProtoBufToModelMap(
                userAccessPb.organization, onlyIdAndSpecificationForDepthFields, true);
      }
    } else {
      if (userAccessPb.hasId()) {
        map[UserAccess.idField] = userAccessPb.id;
      }
      if (userAccessPb.hasVersion()) {
        map[UserAccess.versionField] =
            userAccessPb.version;
      }
      if (userAccessPb.hasAccessRole() ) {
        map[UserAccess.accessRoleField] =
            userAccessPb.accessRole;
      }
      if (userAccessPb.hasUser()) {
        map[UserAccess.userField] =
            User.fromProtoBufToModelMap(userAccessPb.user, onlyIdAndSpecificationForDepthFields, true);
      }
      if (userAccessPb.hasOrganization()) {
        map[UserAccess.organizationField] =
            Organization.fromProtoBufToModelMap(
                userAccessPb.organization, onlyIdAndSpecificationForDepthFields, true);
      }
    }
    return map;
  }
   */
}

class UserAccessHelper {

  static user_access_pb.UserAccess writeToProtoBuf(UserAccess userAccess) {
    user_access_pb.UserAccess userAccessPb = user_access_pb.UserAccess();


    if (userAccess.id != null) userAccessPb.id = userAccess.id;
    if (userAccess.user != null) userAccessPb.user = UserHelper.writeToProtoBuf(userAccess.user, clearUserProfileImage: true);
    if (userAccess.organization != null) userAccessPb.organization =
        OrganizationHelper.writeToProtoBuf(userAccess.organization);
    if (userAccess.accessRole != null)
      userAccessPb.accessRole = userAccess.accessRole;

    return userAccessPb;
  }

  static UserAccess readFromProtoBuf(user_access_pb.UserAccess userAccessPb, Map<String, dynamic> cache) {
    UserAccess userAccess = UserAccess();

    if (userAccessPb.hasId()) userAccess.id = userAccessPb.id;
    if (userAccessPb.hasVersion()) userAccess.version = userAccessPb.version;
    if (userAccessPb.hasUser()) userAccess.user =  cache.putIfAbsent('${UserAccess.userField}${userAccessPb.user.id}@${User.className}', () => UserHelper.readFromProtoBuf(userAccessPb.user, cache));
    if (userAccessPb.hasOrganization()) userAccess.organization = cache.putIfAbsent('${UserAccess.userField}${userAccessPb.organization.id}@${Organization.className}', () => OrganizationHelper.readFromProtoBuf(userAccessPb.organization));
    if (userAccessPb.hasAccessRole()) userAccess.accessRole = userAccessPb.accessRole;

    return userAccess;
  }
}