///
//  Generated code. Do not modify.
//  source: general/organization.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const CustomOrganization$json = const {
  '1': 'CustomOrganization',
  '2': const [
    const {'1': 'organizationSpecification', '2': 0},
  ],
};

const Organization$json = const {
  '1': 'Organization',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'code', '3': 4, '4': 1, '5': 9, '10': 'code'},
  ],
};

const OrganizationRequest$json = const {
  '1': 'OrganizationRequest',
  '2': const [
    const {'1': 'organization', '3': 1, '4': 1, '5': 11, '6': '.auge.protobuf.Organization', '10': 'organization'},
    const {'1': 'auth_user_id', '3': 2, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 3, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const OrganizationDeleteRequest$json = const {
  '1': 'OrganizationDeleteRequest',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'organization_version', '3': 2, '4': 1, '5': 5, '10': 'organizationVersion'},
    const {'1': 'auth_user_id', '3': 3, '4': 1, '5': 9, '10': 'authUserId'},
    const {'1': 'auth_organization_id', '3': 4, '4': 1, '5': 9, '10': 'authOrganizationId'},
  ],
};

const OrganizationGetRequest$json = const {
  '1': 'OrganizationGetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'custom_organization', '3': 2, '4': 1, '5': 14, '6': '.auge.protobuf.CustomOrganization', '10': 'customOrganization'},
  ],
};

const OrganizationsResponse$json = const {
  '1': 'OrganizationsResponse',
  '2': const [
    const {'1': 'organizations', '3': 1, '4': 3, '5': 11, '6': '.auge.protobuf.Organization', '10': 'organizations'},
  ],
};

