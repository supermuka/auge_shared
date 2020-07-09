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


/*
  static Map<String, dynamic> fromProtoBufToModelMap(organization_configuration_pb.OrganizationConfiguration organizationConfigurationPb, [bool onlyIdAndSpecificationForDepthFields = false, bool isDeep = false]) {
    // ignore: prefer_collection_literals
    Map<String, dynamic> map = Map();

    if (onlyIdAndSpecificationForDepthFields && isDeep) {
      if (organizationConfigurationPb.hasId()) {
        map[OrganizationConfiguration.idField] = organizationConfigurationPb.id;
      }
      /*
      if (configurationPb.hasOrganization())
        map[Configuration.organizationField] =
            Organization.fromProtoBufToModelMap(
                configurationPb.organization, onlyIdAndSpecificationForDepthFields, true);

       */

    } else {

      if (organizationConfigurationPb.hasId()) {
        map[OrganizationConfiguration.idField] = organizationConfigurationPb.id;
      }

      if (organizationConfigurationPb.hasVersion()) {
        map[OrganizationConfiguration.versionField] =
            organizationConfigurationPb.version;
      }

      if (organizationConfigurationPb.hasDomain()) {
        map[OrganizationConfiguration.domainField] = organizationConfigurationPb.domain;
      }

      if (organizationConfigurationPb.hasOrganization()) {
        map[OrganizationConfiguration.organizationField] =
            Organization.fromProtoBufToModelMap(
                organizationConfigurationPb.organization, onlyIdAndSpecificationForDepthFields, true);
      }

    }
    return map;
  }
*/
}

class OrganizationConfigurationHelper {

  static organization_configuration_pb.OrganizationConfiguration writeToProtoBuf(OrganizationConfiguration organizationConfiguration, {bool onlySpecification = false}) {
    organization_configuration_pb.OrganizationConfiguration organizationConfigurationPb = organization_configuration_pb.OrganizationConfiguration();

    if (organizationConfiguration.id != null) organizationConfigurationPb.id = organizationConfiguration.id;
    if (organizationConfiguration.domain != null) organizationConfigurationPb.domain = organizationConfiguration.domain;

    if (!onlySpecification) {
      if (organizationConfiguration.version != null) organizationConfigurationPb.version = organizationConfiguration.version;
      if (organizationConfiguration.organization != null)
        organizationConfigurationPb.organization =
            OrganizationHelper.writeToProtoBuf(
                organizationConfiguration.organization, onlySpecification: true);
      //  if (this.organization != null) configurationPb.organization = this.organization.writeToProtoBuf();
    }
    return organizationConfigurationPb;
  }

  static OrganizationConfiguration readFromProtoBuf(organization_configuration_pb.OrganizationConfiguration organizationConfigurationPb) {
    OrganizationConfiguration organizationConfiguration = OrganizationConfiguration();

    if (organizationConfigurationPb.hasId()) organizationConfiguration.id = organizationConfigurationPb.id;
    if (organizationConfigurationPb.hasVersion()) organizationConfiguration.version = organizationConfigurationPb.version;
    if (organizationConfigurationPb.hasDomain()) organizationConfiguration.domain = organizationConfigurationPb.domain;
    if (organizationConfigurationPb.hasOrganization()) organizationConfiguration.organization = OrganizationHelper.readFromProtoBuf(organizationConfigurationPb.organization); // No need cache, normally it has one instance
    //   if (organizationConfigurationPb.hasOrganization()) this.organization = Organization()..readFromProtoBuf(organizationConfigurationPb.organization);

    return organizationConfiguration;
  }

}