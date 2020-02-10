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

    if (this.id != null) userPb.id = this.id;
    if (this.version != null) userPb.version = this.version;
    if (this.name != null) userPb.name = this.name;
    if (this.inactive != null) userPb.inactive = this.inactive;
    if (this.managedByOrganization != null) userPb.managedByOrganization = this.managedByOrganization.writeToProtoBuf();

    if (this.userProfile != null) userPb.userProfile = this.userProfile.writeToProtoBuf();

    return userPb;
  }

  readFromProtoBuf(user_pb.User userPb, Map<String, dynamic> cache) {
    if (userPb.hasId()) this.id = userPb.id;
    if (userPb.hasVersion()) this.version = userPb.version;
    if (userPb.hasName()) this.name = userPb.name;
    if (userPb.hasInactive()) this.inactive = userPb.inactive;
    if (userPb.hasManagedByOrganization()) this.managedByOrganization = cache.putIfAbsent('${User.managedByOrganizationField}${userPb.managedByOrganization.id}@${Organization.className}', () => Organization()..readFromProtoBuf(userPb.managedByOrganization));
    if (userPb.hasUserProfile()) this.userProfile = cache.putIfAbsent('${User.userProfileField}${userPb.id}@${UserProfile.className}', () => UserProfile()..readFromProtoBuf(userPb.userProfile));
  }

  static Map<String, dynamic> fromProtoBufToModelMap(user_pb.User userPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = Map();

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
      if (userPb.hasManagedByOrganization())
        map[User.managedByOrganizationField] =
            Organization.fromProtoBufToModelMap(
                userPb.managedByOrganization, onlyIdAndSpecificationForDepthFields, true);
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

    if (this.eMail != null) userProfilePb.eMail = this.eMail;
    if (this.eMailNotification != null) userProfilePb.eMailNotification = this.eMailNotification;
    if (this.image != null) userProfilePb.image = this.image;
    if (this.idiomLocale != null) userProfilePb.idiomLocale = this.idiomLocale;


    return userProfilePb;
  }

  readFromProtoBuf(user_pb.UserProfile userProfilePb) {
    if (userProfilePb.hasEMail()) this.eMail = userProfilePb.eMail;
    if (userProfilePb.hasEMailNotification()) this.eMailNotification = userProfilePb.eMailNotification;
    if (userProfilePb.hasImage()) this.image = userProfilePb.image;
    if (userProfilePb.hasIdiomLocale()) this.idiomLocale = userProfilePb.idiomLocale;

  }

  static Map<String, dynamic> fromProtoBufToModelMap(user_pb.UserProfile userProfilePb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = Map();

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
    //  if (userProfilePb.hasAdditionalId())
    //    map[UserProfile.additionalIdField] = userProfilePb.additionalId;
    } else {
 //     if (userProfilePb.hasIsSuperAdmin())
 //       map[UserProfile.isSuperAdminField] = userProfilePb.isSuperAdmin;
      if (userProfilePb.hasEMail())
        map[UserProfile.eMailField] = userProfilePb.eMail;
      if (userProfilePb.hasEMailNotification())
        map[UserProfile.eMailNotificationField] = userProfilePb.eMailNotification;
      if (userProfilePb.hasImage())
        map[UserProfile.imageField] = userProfilePb.image;
      if (userProfilePb.hasIdiomLocale())
        map[UserProfile.idiomLocaleField] = userProfilePb.idiomLocale;

    }
    return map;
  }
}
