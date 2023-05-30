# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/phishingprotection/v1beta1/phishingprotection.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n@google/cloud/phishingprotection/v1beta1/phishingprotection.proto\x12\'google.cloud.phishingprotection.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"n\n\x15ReportPhishingRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x10\n\x03uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\x18\n\x16ReportPhishingResponse2\xd3\x02\n PhishingProtectionServiceV1Beta1\x12\xd7\x01\n\x0eReportPhishing\x12>.google.cloud.phishingprotection.v1beta1.ReportPhishingRequest\x1a?.google.cloud.phishingprotection.v1beta1.ReportPhishingResponse\"D\x82\xd3\xe4\x93\x02\x31\",/v1beta1/{parent=projects/*}/phishing:report:\x01*\xda\x41\nparent,uri\x1aU\xca\x41!phishingprotection.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa7\x02\n%com.google.phishingprotection.v1beta1B\x17PhishingProtectionProtoP\x01Z[cloud.google.com/go/phishingprotection/apiv1beta1/phishingprotectionpb;phishingprotectionpb\xa2\x02\x04GCPP\xaa\x02\'Google.Cloud.PhishingProtection.V1Beta1\xca\x02\'Google\\Cloud\\PhishingProtection\\V1beta1\xea\x02*Google::Cloud::PhishingProtection::V1beta1b\x06proto3"

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
    module PhishingProtection
      module V1beta1
        ReportPhishingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.phishingprotection.v1beta1.ReportPhishingRequest").msgclass
        ReportPhishingResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.phishingprotection.v1beta1.ReportPhishingResponse").msgclass
      end
    end
  end
end
