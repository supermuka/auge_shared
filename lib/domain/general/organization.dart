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


}

class OrganizationHelper {

  static organization_pb.Organization writeToProtoBuf(Organization organization) {
    organization_pb.Organization organizatoinPb = organization_pb.Organization();

    if (organization.id != null) organizatoinPb.id = organization.id;
    if (organization.version != null)
      organizatoinPb.version = organization.version;
    if (organization.name != null) organizatoinPb.name = organization.name;
    if (organization.code != null) organizatoinPb.code = organization.code;

    return organizatoinPb;
  }

  static Organization readFromProtoBuf(organization_pb.Organization organizationPb) {
    Organization organization = Organization();

    if (organizationPb.hasId()) organization.id = organizationPb.id;
    if (organizationPb.hasVersion()) organization.version = organizationPb.version;
    if (organizationPb.hasName()) organization.name = organizationPb.name;
    if (organizationPb.hasCode()) organization.code = organizationPb.code;

    return organization;
  }

  /*
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
  */

}