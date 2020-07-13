// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated

import 'package:auge_shared/domain/general/user.dart';

import 'package:auge_shared/protos/generated/general/user_identity.pb.dart' as user_identity_pb;

enum UserIdentityProvider {internal, directoryService}

/// Domain model class to represent an user account identity
class UserIdentity {
  static const String className = 'UserIdentity';

  static const String idField = 'id';
  String id;

  static const String versionField = 'version';
  int version;

  static const String identificationField = 'identification';
  String identification;

  // Text Plan - Not stored
  static const String passwordField = 'password';
  String password;

  // sha256 applied on salt + password
  static const String passwordHashField = 'passwordHash';
  String passwordHash;

  // Salt
  static const String passwordSaltField = 'passwordSalt';
  String passwordSalt;

  // Identity provider type: internal, ldap
  static const String providerField = 'provider';
  int provider;

  // If DirectoryService is enabled then this user can be updated on behalf of
  // Normally OpenLDAP entryUUID, AD objectGUID
  static const String providerObjectIdField = 'providerObjectId';
  String providerObjectId;

  // Ldap - dn - Distinguished Name  cn=admin,dc=auge,dc=levius,dc=com,dc=br
  static const String providerDnField = 'providerDn';
  String providerDn;

  static const String userField = 'user';
  User user;

/*
  static Map<String, dynamic> fromProtoBufToModelMap(user_identity_pb.UserIdentity userIdentityPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (userIdentityPb.hasId()) {
        map[UserIdentity.idField] = userIdentityPb.id;
      }
    } else {
      if (userIdentityPb.hasId()) {
        map[UserIdentity.idField] = userIdentityPb.id;
      }
      if (userIdentityPb.hasVersion()) {
        map[UserIdentity.versionField] = userIdentityPb.version;
      }
      if (userIdentityPb.hasIdentification()) {
        map[UserIdentity.identificationField] = userIdentityPb.identification;
      }
      if (userIdentityPb.hasPassword()) {
        map[UserIdentity.passwordField] = userIdentityPb.password;
      }
      if (userIdentityPb.hasProvider()) {
        map[UserIdentity.providerField] = userIdentityPb.provider;
      }
      if (userIdentityPb.hasProviderObjectId()) {
        map[UserIdentity.providerObjectIdField] = userIdentityPb.providerObjectId;
      }
      if (userIdentityPb.hasProviderDn()) {
        map[UserIdentity.providerDnField] = userIdentityPb.providerDn;
      }

      if (userIdentityPb.hasUser()) {
        map[UserIdentity.userField] =
            User.fromProtoBufToModelMap(
                userIdentityPb.user, onlyIdAndSpecificationForDepthFields, true);
      }
    }
    return map;
  }
 */

}

class UserIdentityHelper {

  static user_identity_pb.UserIdentity writeToProtoBuf(UserIdentity userIdentity) {
    user_identity_pb.UserIdentity userIdentityPb = user_identity_pb.UserIdentity();

    if (userIdentity.id != null) userIdentityPb.id = userIdentity.id;
    if (userIdentity.user != null) userIdentityPb.user =
        UserHelper.writeToProtoBuf(
            userIdentity.user, clearUserProfileImage: true);
    if (userIdentity.version != null)
      userIdentityPb.version = userIdentity.version;
    if (userIdentity.identification != null)
      userIdentityPb.identification = userIdentity.identification;
    if (userIdentity.password != null)
      userIdentityPb.password = userIdentity.password;
    if (userIdentity.provider != null)
      userIdentityPb.provider = userIdentity.provider;
    if (userIdentity.providerObjectId != null)
      userIdentityPb.providerObjectId = userIdentity.providerObjectId;
    if (userIdentity.providerDn != null)
      userIdentityPb.providerObjectId = userIdentity.providerDn;
    if (userIdentity.user != null) userIdentityPb.user =
        UserHelper.writeToProtoBuf(
            userIdentity.user, clearUserProfileImage: true);

    return userIdentityPb;
  }

  static UserIdentity readFromProtoBuf(user_identity_pb.UserIdentity userIdentityPb, Map<String, dynamic> cache) {

    UserIdentity userIdentity = UserIdentity();

    if (userIdentityPb.hasId()) userIdentity.id = userIdentityPb.id;
    if (userIdentityPb.hasVersion()) userIdentity.version = userIdentityPb.version;
    if (userIdentityPb.hasIdentification()) userIdentity.identification = userIdentityPb.identification;
    if (userIdentityPb.hasProviderDn()) userIdentity.providerDn = userIdentityPb.providerDn;
    if (userIdentityPb.hasPassword()) userIdentity.password = userIdentityPb.password;
    if (userIdentityPb.hasProvider()) userIdentity.provider = userIdentityPb.provider;
    if (userIdentityPb.hasProviderObjectId()) userIdentity.providerObjectId = userIdentityPb.providerObjectId;
    if (userIdentityPb.hasUser()) userIdentity.user = cache.putIfAbsent('${UserIdentity.userField}${userIdentityPb.user.id}@${User.className}', () => UserHelper.readFromProtoBuf(userIdentityPb.user, cache));

    return userIdentity;
  }

}