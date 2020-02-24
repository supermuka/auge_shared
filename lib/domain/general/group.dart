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

  group_pb.Group writeToProtoBuf() {
    group_pb.Group groupPb = group_pb.Group();

    if (id != null) {
      groupPb.id = id;
    }
    if (version != null) groupPb.version = version;
    if (name != null) groupPb.name = name;
    if (inactive != null) groupPb.inactive = inactive;
    if (organization != null) groupPb.organization = organization.writeToProtoBuf();
    if (groupType != null) groupPb.groupTypeIndex = groupType.index;
    if (superGroup != null) groupPb.superGroup = superGroup.writeToProtoBuf();
    if (leader != null) groupPb.leader = leader.writeToProtoBuf();
    if (members != null && members.isNotEmpty) groupPb.members.addAll(members.map((m) => m.writeToProtoBuf()));

    return groupPb;
  }

  void readFromProtoBuf(group_pb.Group groupPb, Map<String, dynamic> cache) {
    if (groupPb.hasId()) id = groupPb.id;
    if (groupPb.hasVersion()) version = groupPb.version;
    if (groupPb.hasName()) name = groupPb.name;
    if (groupPb.hasInactive()) inactive = groupPb.inactive;
    if (groupPb.hasOrganization()) organization = cache.putIfAbsent('${Group.organizationField}${groupPb.organization.id}@${Organization.className}', () => Organization()..readFromProtoBuf(groupPb.organization));
    if (groupPb.hasGroupTypeIndex()) groupType = GroupType.values[groupPb.groupTypeIndex];
    if (groupPb.hasSuperGroup()) superGroup =  cache.putIfAbsent('${Group.superGroupField}${groupPb.superGroup.id}@${Group.className}', () => Group()..readFromProtoBuf(groupPb.superGroup, cache));
    if (groupPb.hasLeader()) leader = cache.putIfAbsent('${Group.leaderField}${groupPb.leader.id}@${User.className}', () => User()..readFromProtoBuf(groupPb.leader, cache));
    if (groupPb.members.isNotEmpty) members = groupPb.members.map((u) => cache.putIfAbsent('${Group.membersField}${u.id}@${User.className}', () => User()..readFromProtoBuf(u, cache))).toList().cast<User>();
  }


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
      if (groupPb.hasGroupTypeIndex()) map[Group.groupTypeField] = groupPb.groupTypeIndex;
      if (groupPb.hasSuperGroup()) {
        map[Group.superGroupField] =
          Group.fromProtoBufToModelMap(groupPb.superGroup, onlyIdAndSpecificationForDepthFields, true);
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
}