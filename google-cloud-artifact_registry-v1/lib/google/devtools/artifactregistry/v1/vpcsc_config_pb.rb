# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1/vpcsc_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n6google/devtools/artifactregistry/v1/vpcsc_config.proto\x12#google.devtools.artifactregistry.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\"\x98\x02\n\x0bVPCSCConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12R\n\x0cvpcsc_policy\x18\x02 \x01(\x0e\x32<.google.devtools.artifactregistry.v1.VPCSCConfig.VPCSCPolicy\"@\n\x0bVPCSCPolicy\x12\x1c\n\x18VPCSC_POLICY_UNSPECIFIED\x10\x00\x12\x08\n\x04\x44\x45NY\x10\x01\x12\t\n\x05\x41LLOW\x10\x02:e\xea\x41\x62\n+artifactregistry.googleapis.com/VpcscConfig\x12\x33projects/{project}/locations/{location}/vpcscConfig\"Z\n\x15GetVPCSCConfigRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+artifactregistry.googleapis.com/VpcscConfig\"\x93\x01\n\x18UpdateVPCSCConfigRequest\x12\x46\n\x0cvpcsc_config\x18\x01 \x01(\x0b\x32\x30.google.devtools.artifactregistry.v1.VPCSCConfig\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\xfb\x01\n\'com.google.devtools.artifactregistry.v1B\x10VPCSCConfigProtoP\x01ZPcloud.google.com/go/artifactregistry/apiv1/artifactregistrypb;artifactregistrypb\xaa\x02 Google.Cloud.ArtifactRegistry.V1\xca\x02 Google\\Cloud\\ArtifactRegistry\\V1\xea\x02#Google::Cloud::ArtifactRegistry::V1b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module ArtifactRegistry
      module V1
        VPCSCConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.VPCSCConfig").msgclass
        VPCSCConfig::VPCSCPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.VPCSCConfig.VPCSCPolicy").enummodule
        GetVPCSCConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.GetVPCSCConfigRequest").msgclass
        UpdateVPCSCConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.UpdateVPCSCConfigRequest").msgclass
      end
    end
  end
end
