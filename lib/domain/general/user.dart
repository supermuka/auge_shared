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

}


class UserHelper {

  static user_pb.User writeToProtoBuf(User user) {
    user_pb.User userPb = user_pb.User();

    if (user.id != null) userPb.id = user.id;
    if (user.version != null) userPb.version = user.version;
    if (user.name != null) userPb.name = user.name;
    if (user.inactive != null) userPb.inactive = user.inactive;
    if (user.managedByOrganization != null) userPb.managedByOrganization =
        OrganizationHelper.writeToProtoBuf(user.managedByOrganization);

    // Is composition, deletage onlySpecification.
    if (user.userProfile != null) userPb.userProfile =
        UserProfileHelper.writeToProtoBuf(user.userProfile);

    return userPb;
  }

  static User readFromProtoBuf(user_pb.User userPb, Map<String, dynamic> cache) {
    User user = User();

    if (userPb.hasId()) user.id = userPb.id;
    if (userPb.hasVersion()) user.version = userPb.version;
    if (userPb.hasName()) user.name = userPb.name;
    if (userPb.hasInactive()) user.inactive = userPb.inactive;
    if (userPb.hasManagedByOrganization()) user.managedByOrganization = cache.putIfAbsent('${User.managedByOrganizationField}${userPb.managedByOrganization.id}@${Organization.className}', () => OrganizationHelper.readFromProtoBuf(userPb.managedByOrganization));
    if (userPb.hasUserProfile()) user.userProfile = cache.putIfAbsent('${User.userProfileField}${userPb.id}@${UserProfile.className}', () => UserProfileHelper.readFromProtoBuf(userPb.userProfile));

    return user;
  }

/*
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
*/
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

//  static const String datelastHistoryReadingField = 'lastHistoryReading';


/*
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

 */
}

class UserProfileHelper {

  static user_pb.UserProfile writeToProtoBuf(UserProfile userProfile) {
    user_pb.UserProfile userProfilePb = user_pb.UserProfile();

    if (userProfile.eMail != null) userProfilePb.eMail = userProfile.eMail;
    if (userProfile.eMailNotification != null)
      userProfilePb.eMailNotification = userProfile.eMailNotification;
    if (userProfile.image != null) userProfilePb.image = userProfile.image;
    if (userProfile.idiomLocale != null)
      userProfilePb.idiomLocale = userProfile.idiomLocale;

    // if (lastHistoryReading != null) userProfilePb.dateTimeReadingHistory = CommonUtils.timestampFromDateTime(dateTimeReadingHistory);

    return userProfilePb;
  }

  static UserProfile readFromProtoBuf(user_pb.UserProfile userProfilePb) {

    UserProfile userProfile = UserProfile();
    if (userProfilePb.hasEMail()) userProfile.eMail = userProfilePb.eMail;
    if (userProfilePb.hasEMailNotification()) userProfile.eMailNotification = userProfilePb.eMailNotification;
    if (userProfilePb.hasImage()) userProfile.image = userProfilePb.image;
    if (userProfilePb.hasIdiomLocale()) userProfile.idiomLocale = userProfilePb.idiomLocale;

    return userProfile;

  }

}
