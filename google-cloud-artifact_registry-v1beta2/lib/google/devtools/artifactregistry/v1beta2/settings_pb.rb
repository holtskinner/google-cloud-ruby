# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1beta2/settings.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n7google/devtools/artifactregistry/v1beta2/settings.proto\x12(google.devtools.artifactregistry.v1beta2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\"\x91\x03\n\x0fProjectSettings\x12\x0c\n\x04name\x18\x01 \x01(\t\x12l\n\x18legacy_redirection_state\x18\x02 \x01(\x0e\x32J.google.devtools.artifactregistry.v1beta2.ProjectSettings.RedirectionState\"\xa7\x01\n\x10RedirectionState\x12!\n\x1dREDIRECTION_STATE_UNSPECIFIED\x10\x00\x12$\n REDIRECTION_FROM_GCR_IO_DISABLED\x10\x01\x12#\n\x1fREDIRECTION_FROM_GCR_IO_ENABLED\x10\x02\x12%\n!REDIRECTION_FROM_GCR_IO_FINALIZED\x10\x03:X\xea\x41U\n/artifactregistry.googleapis.com/ProjectSettings\x12\"projects/{project}/projectSettings\"b\n\x19GetProjectSettingsRequest\x12\x45\n\x04name\x18\x01 \x01(\tB7\xe0\x41\x02\xfa\x41\x31\n/artifactregistry.googleapis.com/ProjectSettings\"\xa4\x01\n\x1cUpdateProjectSettingsRequest\x12S\n\x10project_settings\x18\x02 \x01(\x0b\x32\x39.google.devtools.artifactregistry.v1beta2.ProjectSettings\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x91\x02\n,com.google.devtools.artifactregistry.v1beta2B\rSettingsProtoP\x01ZUcloud.google.com/go/artifactregistry/apiv1beta2/artifactregistrypb;artifactregistrypb\xaa\x02%Google.Cloud.ArtifactRegistry.V1Beta2\xca\x02%Google\\Cloud\\ArtifactRegistry\\V1beta2\xea\x02(Google::Cloud::ArtifactRegistry::V1beta2b\x06proto3"

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
      module V1beta2
        ProjectSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ProjectSettings").msgclass
        ProjectSettings::RedirectionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ProjectSettings.RedirectionState").enummodule
        GetProjectSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.GetProjectSettingsRequest").msgclass
        UpdateProjectSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.UpdateProjectSettingsRequest").msgclass
      end
    end
  end
end
