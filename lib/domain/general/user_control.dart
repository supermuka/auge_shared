// Copyright (c) 2020, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/src/util/common_utils.dart';
import 'package:auge_shared/domain/general/user.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/general/user_control.pb.dart' as user_control_pb;

/// Domain model class to represent an user control
/// The first proposal the *[Control] class is to control data of the system.
/// Normally this does not is´saved with Domain Class neither saved into history.
class UserControl {
  static const String className = 'UserControl';

  // Is the primary key
  static const String userField = 'userField';
  User user;

  static const String dateTimeLastNotificationField = 'dateTimeLastNotification';
  DateTime dateTimeLastNotification;

  user_control_pb.UserControl writeToProtoBuf() {
    user_control_pb.UserControl userControlPb = user_control_pb.UserControl();

    if (user != null) userControlPb.user = user.writeToProtoBuf();
    if (dateTimeLastNotification != null) userControlPb.dateTimeLastNotification = CommonUtils.timestampFromDateTime(dateTimeLastNotification);

    return userControlPb;
  }

  void readFromProtoBuf(user_control_pb.UserControl userControlPb, Map<String, dynamic> cache) {

    if (userControlPb.hasUser()) user =  cache.putIfAbsent('${UserControl.userField}${userControlPb.user.id}@${User.className}', () => User()..readFromProtoBuf(userControlPb.user, cache));
    if (userControlPb.hasDateTimeLastNotification()) {
      dateTimeLastNotification = userControlPb.dateTimeLastNotification.toDateTime();
    }

  }

  static Map<String, dynamic> fromProtoBufToModelMap(user_control_pb.UserControl userControlPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};
    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (userControlPb.hasUser()) {
        map[UserControl.userField] = userControlPb.user.id;
      }
    } else {
      if (userControlPb.hasUser()) {
        map[UserControl.userField] =
            User.fromProtoBufToModelMap(userControlPb.user, onlyIdAndSpecificationForDepthFields, true);
      }
      if (userControlPb.hasDateTimeLastNotification()) {
        map[UserControl.dateTimeLastNotificationField] = userControlPb.dateTimeLastNotification.toDateTime();
      }
    }
    return map;
  }
}