# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/rapidmigrationassessment/v1/api_entities.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n;google/cloud/rapidmigrationassessment/v1/api_entities.proto\x12(google.cloud.rapidmigrationassessment.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\"\n\x0bGuestOsScan\x12\x13\n\x0b\x63ore_source\x18\x01 \x01(\t\"\"\n\x0bVSphereScan\x12\x13\n\x0b\x63ore_source\x18\x01 \x01(\t\"\xfa\x07\n\tCollector\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12O\n\x06labels\x18\x04 \x03(\x0b\x32?.google.cloud.rapidmigrationassessment.v1.Collector.LabelsEntry\x12\x14\n\x0c\x64isplay_name\x18\x05 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x06 \x01(\t\x12\x17\n\x0fservice_account\x18\x07 \x01(\t\x12\x13\n\x06\x62ucket\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x1c\n\x14\x65xpected_asset_count\x18\t \x01(\x03\x12M\n\x05state\x18\n \x01(\x0e\x32\x39.google.cloud.rapidmigrationassessment.v1.Collector.StateB\x03\xe0\x41\x03\x12\x1b\n\x0e\x63lient_version\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12Q\n\rguest_os_scan\x18\x0c \x01(\x0b\x32\x35.google.cloud.rapidmigrationassessment.v1.GuestOsScanB\x03\xe0\x41\x03\x12P\n\x0cvsphere_scan\x18\r \x01(\x0b\x32\x35.google.cloud.rapidmigrationassessment.v1.VSphereScanB\x03\xe0\x41\x03\x12\x17\n\x0f\x63ollection_days\x18\x0e \x01(\x05\x12\x10\n\x08\x65ula_uri\x18\x0f \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xc7\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x16\n\x12STATE_INITIALIZING\x10\x01\x12\x16\n\x12STATE_READY_TO_USE\x10\x02\x12\x14\n\x10STATE_REGISTERED\x10\x03\x12\x10\n\x0cSTATE_ACTIVE\x10\x04\x12\x10\n\x0cSTATE_PAUSED\x10\x05\x12\x12\n\x0eSTATE_DELETING\x10\x06\x12\x18\n\x14STATE_DECOMMISSIONED\x10\x07\x12\x0f\n\x0bSTATE_ERROR\x10\x08:v\xea\x41s\n1rapidmigrationassessment.googleapis.com/Collector\x12>projects/{project}/locations/{location}/collectors/{collector}\"\x9b\x04\n\nAnnotation\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12P\n\x06labels\x18\x04 \x03(\x0b\x32@.google.cloud.rapidmigrationassessment.v1.Annotation.LabelsEntry\x12G\n\x04type\x18\x05 \x01(\x0e\x32\x39.google.cloud.rapidmigrationassessment.v1.Annotation.Type\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"N\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x1e\n\x1aTYPE_LEGACY_EXPORT_CONSENT\x10\x01\x12\x10\n\x0cTYPE_QWIKLAB\x10\x02:y\xea\x41v\n2rapidmigrationassessment.googleapis.com/Annotation\x12@projects/{project}/locations/{location}/annotations/{annotation}B\xb0\x02\n,com.google.cloud.rapidmigrationassessment.v1B\x10\x41piEntitiesProtoP\x01Zhcloud.google.com/go/rapidmigrationassessment/apiv1/rapidmigrationassessmentpb;rapidmigrationassessmentpb\xaa\x02(Google.Cloud.RapidMigrationAssessment.V1\xca\x02(Google\\Cloud\\RapidMigrationAssessment\\V1\xea\x02+Google::Cloud::RapidMigrationAssessment::V1b\x06proto3"

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
    module RapidMigrationAssessment
      module V1
        GuestOsScan = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.rapidmigrationassessment.v1.GuestOsScan").msgclass
        VSphereScan = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.rapidmigrationassessment.v1.VSphereScan").msgclass
        Collector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.rapidmigrationassessment.v1.Collector").msgclass
        Collector::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.rapidmigrationassessment.v1.Collector.State").enummodule
        Annotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.rapidmigrationassessment.v1.Annotation").msgclass
        Annotation::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.rapidmigrationassessment.v1.Annotation.Type").enummodule
      end
    end
  end
end
