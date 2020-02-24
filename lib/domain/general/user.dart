// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated

import 'package:auge_shared/domain/general/organization.dart';

import 'package:auge_shared/protos/generated/general/user.pb.dart' as user_pb;

/// Domain model class to represent an user account
/// [User] class has system attributes, except [name] used here as an user specification. [UserProfile] has personal attributes
class User {
  static const String className = 'User';

  User() {
    userProfile = UserProfile();
  }

  // Base fields
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // Specific fields
  static const String nameField = 'name';
  String name;

  static const String inactiveField = 'inactive';
  bool inactive;

  // Organization, owner this user to data maintenance
  // The authorization for an Organization is done in UserAccess.
  static const String managedByOrganizationField = 'managedByOrganization';
  Organization managedByOrganization;

  // Profile
  static const String userProfileField = 'userProfile';
  UserProfile userProfile;

  user_pb.User writeToProtoBuf() {
    user_pb.User userPb = user_pb.User();

    if (id != null) userPb.id = id;
    if (version != null) userPb.version = version;
    if (name != null) userPb.name = name;
    if (inactive != null) userPb.inactive = inactive;
    if (managedByOrganization != null) userPb.managedByOrganization = managedByOrganization.writeToProtoBuf();

    if (userProfile != null) userPb.userProfile = userProfile.writeToProtoBuf();

    return userPb;
  }

  void readFromProtoBuf(user_pb.User userPb, Map<String, dynamic> cache) {
    if (userPb.hasId()) id = userPb.id;
    if (userPb.hasVersion()) version = userPb.version;
    if (userPb.hasName()) name = userPb.name;
    if (userPb.hasInactive()) inactive = userPb.inactive;
    if (userPb.hasManagedByOrganization()) managedByOrganization = cache.putIfAbsent('${User.managedByOrganizationField}${userPb.managedByOrganization.id}@${Organization.className}', () => Organization()..readFromProtoBuf(userPb.managedByOrganization));
    if (userPb.hasUserProfile()) userProfile = cache.putIfAbsent('${User.userProfileField}${userPb.id}@${UserProfile.className}', () => UserProfile()..readFromProtoBuf(userPb.userProfile));
  }

  static Map<String, dynamic> fromProtoBufToModelMap(user_pb.User userPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (userPb.hasId()) map[User.idField] = userPb.id;
      if (userPb.hasName()) map[User.nameField] = userPb.name;
    } else
    {
      if (userPb.hasId()) map[User.idField] = userPb.id;
      if (userPb.hasVersion()) map[User.versionField] = userPb.version;
      if (userPb.hasName()) map[User.nameField] = userPb.name;
      if (userPb.hasUserProfile()) {
        map[User.userProfileField] =
            UserProfile.fromProtoBufToModelMap(
                userPb.userProfile, onlyIdAndSpecificationForDepthFields,
                false); // here isDeep is false, because UserProfile is like an extention

      }
      if (userPb.hasManagedByOrganization()) {
        map[User.managedByOrganizationField] =
            Organization.fromProtoBufToModelMap(
                userPb.managedByOrganization, onlyIdAndSpecificationForDepthFields, true);
      }
    }
    return map;
  }
}

/// Domain model class to represent an user account profile
class UserProfile {
  static const String className = 'UserProfile';

  static const String eMailField = 'eMail';
  String eMail;

  static const String eMailNotificationField = 'eMailNotification';
  bool eMailNotification;

  // Base64
  static const String imageField = 'image';
  String image;

  // pt_BR, en es_ES
  static const String idiomLocaleField = 'idiomLocale';
  String idiomLocale;



  user_pb.UserProfile writeToProtoBuf() {
    user_pb.UserProfile userProfilePb = user_pb.UserProfile();

    if (eMail != null) userProfilePb.eMail = eMail;
    if (eMailNotification != null) userProfilePb.eMailNotification = eMailNotification;
    if (image != null) userProfilePb.image = image;
    if (idiomLocale != null) userProfilePb.idiomLocale = idiomLocale;


    return userProfilePb;
  }

  void readFromProtoBuf(user_pb.UserProfile userProfilePb) {
    if (userProfilePb.hasEMail()) eMail = userProfilePb.eMail;
    if (userProfilePb.hasEMailNotification()) eMailNotification = userProfilePb.eMailNotification;
    if (userProfilePb.hasImage()) image = userProfilePb.image;
    if (userProfilePb.hasIdiomLocale()) idiomLocale = userProfilePb.idiomLocale;

  }

  static Map<String, dynamic> fromProtoBufToModelMap(user_pb.UserProfile userProfilePb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
    //  if (userProfilePb.hasAdditionalId())
    //    map[UserProfile.additionalIdField] = userProfilePb.additionalId;
    } else {
 //     if (userProfilePb.hasIsSuperAdmin())
 //       map[UserProfile.isSuperAdminField] = userProfilePb.isSuperAdmin;
      if (userProfilePb.hasEMail()) {
        map[UserProfile.eMailField] = userProfilePb.eMail;
      }
      if (userProfilePb.hasEMailNotification()) {
        map[UserProfile.eMailNotificationField] = userProfilePb.eMailNotification;
      }
      if (userProfilePb.hasImage()) {
        map[UserProfile.imageField] = userProfilePb.image;
      }
      if (userProfilePb.hasIdiomLocale()) {
        map[UserProfile.idiomLocaleField] = userProfilePb.idiomLocale;
      }

    }
    return map;
  }
}
