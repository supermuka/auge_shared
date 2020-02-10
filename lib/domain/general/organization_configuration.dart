// Copyright (c) 2018, Levius Tecnologia Ltda. All rights reserved.
// Author: Samuel C. Schwebel

// ignore_for_file: uri_has_not_been_generated

import 'package:auge_shared/domain/general/organization.dart';

import 'package:auge_shared/protos/generated/general/organization_configuration.pb.dart' as organization_configuration_pb;

/// Domain model class to represent
class OrganizationConfiguration {
  static const String className = 'OrganizationConfiguration';

  // Base fields
  static const String idField = 'id';
  String id;
  static const String versionField = 'version';
  int version;

  // Need to be unique
  static const String domainField = 'domain';
  String domain;

  static const String organizationField = 'organization';
  Organization organization;

  OrganizationConfiguration() {
    organization = Organization();
  }

  organization_configuration_pb.OrganizationConfiguration writeToProtoBuf() {
    organization_configuration_pb.OrganizationConfiguration organizationConfigurationPb = organization_configuration_pb.OrganizationConfiguration();

    if (this.id != null) organizationConfigurationPb.id = this.id;
    if (this.version != null) organizationConfigurationPb.version = this.version;
    if (this.domain != null) organizationConfigurationPb.domain = this.domain;
    if (this.organization != null) organizationConfigurationPb.organization = this.organization.writeToProtoBuf();
  //  if (this.organization != null) configurationPb.organization = this.organization.writeToProtoBuf();

    return organizationConfigurationPb;
  }

  void readFromProtoBuf(organization_configuration_pb.OrganizationConfiguration organizationConfigurationPb) {
    if (organizationConfigurationPb.hasId()) this.id = organizationConfigurationPb.id;
    if (organizationConfigurationPb.hasVersion()) this.version = organizationConfigurationPb.version;
    if (organizationConfigurationPb.hasDomain()) this.domain = organizationConfigurationPb.domain;
    if (organizationConfigurationPb.hasOrganization()) this.organization = Organization()..readFromProtoBuf(organizationConfigurationPb.organization); // No need cache, normally it has one instance
 //   if (organizationConfigurationPb.hasOrganization()) this.organization = Organization()..readFromProtoBuf(organizationConfigurationPb.organization);
  }

  static Map<String, dynamic> fromProtoBufToModelMap(organization_configuration_pb.OrganizationConfiguration organizationConfigurationPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    Map<String, dynamic> map = Map();

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (organizationConfigurationPb.hasId())
        map[OrganizationConfiguration.idField] = organizationConfigurationPb.id;
      /*
      if (configurationPb.hasOrganization())
        map[Configuration.organizationField] =
            Organization.fromProtoBufToModelMap(
                configurationPb.organization, onlyIdAndSpecificationForDepthFields, true);

       */

    } else {

      if (organizationConfigurationPb.hasId())
        map[OrganizationConfiguration.idField] = organizationConfigurationPb.id;

      if (organizationConfigurationPb.hasVersion())
        map[OrganizationConfiguration.versionField] =
            organizationConfigurationPb.version;

      if (organizationConfigurationPb.hasDomain())
        map[OrganizationConfiguration.domainField] = organizationConfigurationPb.domain;

      if (organizationConfigurationPb.hasOrganization())
        map[OrganizationConfiguration.organizationField] =
            Organization.fromProtoBufToModelMap(
                organizationConfigurationPb.organization, onlyIdAndSpecificationForDepthFields, true);

    }
    return map;
  }

}