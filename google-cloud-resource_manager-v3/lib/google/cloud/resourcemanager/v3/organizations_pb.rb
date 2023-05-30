# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/resourcemanager/v3/organizations.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n3google/cloud/resourcemanager/v3/organizations.proto\x12\x1fgoogle.cloud.resourcemanager.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x83\x04\n\x0cOrganization\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12$\n\x15\x64irectory_customer_id\x18\x03 \x01(\tB\x03\xe0\x41\x05H\x00\x12G\n\x05state\x18\x04 \x01(\x0e\x32\x33.google.cloud.resourcemanager.v3.Organization.StateB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x08 \x01(\tB\x03\xe0\x41\x03\"@\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\x14\n\x10\x44\x45LETE_REQUESTED\x10\x02:V\xea\x41S\n0cloudresourcemanager.googleapis.com/Organization\x12\x1corganizations/{organization}R\x01\x01\x42\x07\n\x05owner\"`\n\x16GetOrganizationRequest\x12\x46\n\x04name\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0cloudresourcemanager.googleapis.com/Organization\"a\n\x1aSearchOrganizationsRequest\x12\x16\n\tpage_size\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05query\x18\x03 \x01(\tB\x03\xe0\x41\x01\"|\n\x1bSearchOrganizationsResponse\x12\x44\n\rorganizations\x18\x01 \x03(\x0b\x32-.google.cloud.resourcemanager.v3.Organization\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x1c\n\x1a\x44\x65leteOrganizationMetadata\"\x1e\n\x1cUndeleteOrganizationMetadata2\xe5\x07\n\rOrganizations\x12\xa4\x01\n\x0fGetOrganization\x12\x37.google.cloud.resourcemanager.v3.GetOrganizationRequest\x1a-.google.cloud.resourcemanager.v3.Organization\")\x82\xd3\xe4\x93\x02\x1c\x12\x1a/v3/{name=organizations/*}\xda\x41\x04name\x12\xba\x01\n\x13SearchOrganizations\x12;.google.cloud.resourcemanager.v3.SearchOrganizationsRequest\x1a<.google.cloud.resourcemanager.v3.SearchOrganizationsResponse\"(\x82\xd3\xe4\x93\x02\x1a\x12\x18/v3/organizations:search\xda\x41\x05query\x12\x8c\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"A\x82\xd3\xe4\x93\x02\x30\"+/v3/{resource=organizations/*}:getIamPolicy:\x01*\xda\x41\x08resource\x12\x8c\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"A\x82\xd3\xe4\x93\x02\x30\"+/v3/{resource=organizations/*}:setIamPolicy:\x01*\xda\x41\x08resource\x12\xbe\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"S\x82\xd3\xe4\x93\x02\x36\"1/v3/{resource=organizations/*}:testIamPermissions:\x01*\xda\x41\x14resource,permissions\x1a\x90\x01\xca\x41#cloudresourcemanager.googleapis.com\xd2\x41ghttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-onlyB\xf3\x01\n#com.google.cloud.resourcemanager.v3B\x12OrganizationsProtoP\x01ZMcloud.google.com/go/resourcemanager/apiv3/resourcemanagerpb;resourcemanagerpb\xaa\x02\x1fGoogle.Cloud.ResourceManager.V3\xca\x02\x1fGoogle\\Cloud\\ResourceManager\\V3\xea\x02\"Google::Cloud::ResourceManager::V3b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module ResourceManager
      module V3
        Organization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.Organization").msgclass
        Organization::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.Organization.State").enummodule
        GetOrganizationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.GetOrganizationRequest").msgclass
        SearchOrganizationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.SearchOrganizationsRequest").msgclass
        SearchOrganizationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.SearchOrganizationsResponse").msgclass
        DeleteOrganizationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteOrganizationMetadata").msgclass
        UndeleteOrganizationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.UndeleteOrganizationMetadata").msgclass
      end
    end
  end
end
