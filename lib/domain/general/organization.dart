// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

// Proto buffer transport layer.
import 'package:auge_shared/protos/generated/general/organization.pb.dart' as organization_pb;

/// Domain model class to represent an organiozation (corporate, team, etc.)
class Organization {
  static const String className = 'Organization';

  // Base fields
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  /// Specific fields
  static const String nameField = 'name';
  String name;

  /// i.e. CNPJ (Brazil), EIN (USA)
  static const String codeField = 'code';
  String code;

  organization_pb.Organization writeToProtoBuf() {
    organization_pb.Organization organizatoinPb = organization_pb.Organization();

    if (id != null) organizatoinPb.id = id;
    if (version != null) organizatoinPb.version = version;
    if (name != null) organizatoinPb.name = name;
    if (code != null) organizatoinPb.code = code;

    return organizatoinPb;
  }

  void readFromProtoBuf(organization_pb.Organization organizationPb) {
    if (organizationPb.hasId()) id = organizationPb.id;
    if (organizationPb.hasVersion()) version = organizationPb.version;
    if (organizationPb.hasName()) name = organizationPb.name;
    if (organizationPb.hasCode()) code = organizationPb.code;

  }

  static Map<String, dynamic> fromProtoBufToModelMap(organization_pb.Organization organizationPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = {};

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (organizationPb.hasId()) map[Organization.idField] = organizationPb.id;
      if (organizationPb.hasName()) map[Organization.nameField] = organizationPb.name;
    } else {
      if (organizationPb.hasId()) map[Organization.idField] = organizationPb.id;
      if (organizationPb.hasVersion()) {
        map[Organization.versionField] = organizationPb.version;
      }
      if (organizationPb.hasName()) {
        map[Organization.nameField] = organizationPb.name;
      }
      if (organizationPb.hasCode()) {
        map[Organization.codeField] = organizationPb.code;
      }
    }

    return map;
  }
}