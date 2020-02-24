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

  user_access_pb.UserAccess writeToProtoBuf() {
    user_access_pb.UserAccess userAccessPb = user_access_pb.UserAccess();

    if (id != null) userAccessPb.id = id;
    if (version != null) userAccessPb.version = version;
    if (user != null) userAccessPb.user = user.writeToProtoBuf();
    if (organization != null) userAccessPb.organization = organization.writeToProtoBuf();
    if (accessRole != null) userAccessPb.accessRole = accessRole;

    return userAccessPb;
  }

  void readFromProtoBuf(user_access_pb.UserAccess userAccessPb, Map<String, dynamic> cache) {
    if (userAccessPb.hasId()) id = userAccessPb.id;
    if (userAccessPb.hasVersion()) version = userAccessPb.version;
    if (userAccessPb.hasUser()) user =  cache.putIfAbsent('${UserAccess.userField}${userAccessPb.user.id}@${User.className}', () => User()..readFromProtoBuf(userAccessPb.user, cache));
    if (userAccessPb.hasOrganization()) organization = cache.putIfAbsent('${UserAccess.userField}${userAccessPb.organization.id}@${Organization.className}', () => Organization()..readFromProtoBuf(userAccessPb.organization));
    if (userAccessPb.hasAccessRole()) accessRole = userAccessPb.accessRole;
  }
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
}