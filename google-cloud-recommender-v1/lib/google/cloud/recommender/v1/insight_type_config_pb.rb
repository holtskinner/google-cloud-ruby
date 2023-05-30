# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recommender/v1/insight_type_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n5google/cloud/recommender/v1/insight_type_config.proto\x12\x1bgoogle.cloud.recommender.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd6\x04\n\x11InsightTypeConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12`\n\x1einsight_type_generation_config\x18\x02 \x01(\x0b\x32\x38.google.cloud.recommender.v1.InsightTypeGenerationConfig\x12\x0c\n\x04\x65tag\x18\x03 \x01(\t\x12/\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1b\n\x0brevision_id\x18\x05 \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12T\n\x0b\x61nnotations\x18\x06 \x03(\x0b\x32?.google.cloud.recommender.v1.InsightTypeConfig.AnnotationsEntry\x12\x14\n\x0c\x64isplay_name\x18\x07 \x01(\t\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\xd4\x01\xea\x41\xd0\x01\n,recommender.googleapis.com/InsightTypeConfig\x12Jprojects/{project}/locations/{location}/insightTypes/{insight_type}/config\x12Torganizations/{organization}/locations/{location}/insightTypes/{insight_type}/config\"F\n\x1bInsightTypeGenerationConfig\x12\'\n\x06params\x18\x01 \x01(\x0b\x32\x17.google.protobuf.StructB\xa3\x01\n\x1f\x63om.google.cloud.recommender.v1B\x16InsightTypeConfigProtoP\x01ZAcloud.google.com/go/recommender/apiv1/recommenderpb;recommenderpb\xa2\x02\x04\x43REC\xaa\x02\x1bGoogle.Cloud.Recommender.V1b\x06proto3"

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
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
    module Recommender
      module V1
        InsightTypeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.InsightTypeConfig").msgclass
        InsightTypeGenerationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.InsightTypeGenerationConfig").msgclass
      end
    end
  end
end
