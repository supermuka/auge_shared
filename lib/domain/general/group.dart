// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

import 'package:auge_shared/domain/general/organization.dart';
import 'package:auge_shared/domain/general/user.dart';

// Proto buffer transport layer.
// ignore_for_file: uri_has_not_been_generated
import 'package:auge_shared/protos/generated/general/group.pb.dart' as group_pb;

enum GroupType {company, businessUnit, department, team}

/// Domain model class to represent a group
class Group {
  static const String className = 'Group';

  // Base fields
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // Specific  
  static const String nameField = 'name';
  String name;

  static const String inactiveField = 'inactive';
  bool inactive;

  static const String organizationField = 'organization';
  Organization organization;

  static const String groupTypeField = 'groupType';
  GroupType groupType;

  static const String superGroupField = 'superGroup';
  Group superGroup;

  static const String leaderField = 'leader';
  User leader;

  static const String membersField = 'members';
  List<User> members = [];
}

class GroupHelper {

  static group_pb.Group writeToProtoBuf(Group group) {
    group_pb.Group groupPb = group_pb.Group();

    if (group.id != null) {
      groupPb.id = group.id;
    }
    if (group.version != null) groupPb.version = group.version;
    if (group.name != null) groupPb.name = group.name;
    if (group.inactive != null) groupPb.inactive = group.inactive;
    if (group.organization != null) groupPb.organization = OrganizationHelper.writeToProtoBuf(group.organization);
    if (group.groupType != null) groupPb.groupTypeIndex = group.groupType.index;
    if (group.superGroup != null) groupPb.superGroup = GroupHelper.writeToProtoBuf(group.superGroup);
    if (group.leader != null) groupPb.leader = UserHelper.writeToProtoBuf(group.leader);
    if (group.members != null && group.members.isNotEmpty) groupPb.members.addAll(group.members.map((m) => UserHelper.writeToProtoBuf(m)));

    return groupPb;
  }

  static Group readFromProtoBuf(group_pb.Group groupPb, Map<String, dynamic> cache) {
    Group group = Group();

    if (groupPb.hasId()) group.id = groupPb.id;
    if (groupPb.hasVersion()) group.version = groupPb.version;
    if (groupPb.hasName()) group.name = groupPb.name;
    if (groupPb.hasInactive()) group.inactive = groupPb.inactive;
    if (groupPb.hasOrganization()) group.organization = cache.putIfAbsent('${Group.organizationField}${groupPb.organization.id}@${Organization.className}', () => OrganizationHelper.readFromProtoBuf(groupPb.organization));
    if (groupPb.hasGroupTypeIndex()) group.groupType = GroupType.values[groupPb.groupTypeIndex];
    if (groupPb.hasSuperGroup()) group.superGroup =  cache.putIfAbsent('${Group.superGroupField}${groupPb.superGroup.id}@${Group.className}', () => GroupHelper.readFromProtoBuf(groupPb.superGroup, cache));
    if (groupPb.hasLeader()) group.leader = cache.putIfAbsent('${Group.leaderField}${groupPb.leader.id}@${User.className}', () => UserHelper.readFromProtoBuf(groupPb.leader, cache));
    if (groupPb.members.isNotEmpty) group.members = groupPb.members.map((u) => cache.putIfAbsent('${Group.membersField}${u.id}@${User.className}', () => UserHelper.readFromProtoBuf(u, cache))).toList().cast<User>();
    return group;
  }

/*
  static Map<String, dynamic> fromProtoBufToModelMap(group_pb.Group groupPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (groupPb.hasId()) map[Group.idField] = groupPb.id;
      if (groupPb.hasName()) map[Group.nameField] = groupPb.name;
    } else {
      if (groupPb.hasId()) map[Group.idField] = groupPb.id;
      if (groupPb.hasVersion()) map[Group.versionField] = groupPb.version;
      if (groupPb.hasName()) map[Group.nameField] = groupPb.name;
      if (groupPb.hasInactive()) map[Group.inactiveField] = groupPb.inactive;
      if (groupPb.hasOrganization()) {
        map[Group.organizationField] =
            Organization.fromProtoBufToModelMap(groupPb.organization, onlyIdAndSpecificationForDepthFields, true);
      }
      if (groupPb.hasGroupTypeIndex()) map[Group.groupTypeField] = GroupType.values[groupPb.groupTypeIndex];
      if (groupPb.hasSuperGroup()) {
        map[Group.superGroupField] =
            GroupHelper.fromProtoBufToModelMap(groupPb.superGroup, onlyIdAndSpecificationForDepthFields, true);
      }
      if (groupPb.hasLeader()) {
        map[Group.leaderField] =
            User.fromProtoBufToModelMap(groupPb.leader, onlyIdAndSpecificationForDepthFields, true);
      }
      if (groupPb.members.isNotEmpty) {
        map[Group.membersField] =
            groupPb.members.map((u) => User.fromProtoBufToModelMap(u, onlyIdAndSpecificationForDepthFields, true))
                .toList();
      }
    }
    return map;
  }
*/
}