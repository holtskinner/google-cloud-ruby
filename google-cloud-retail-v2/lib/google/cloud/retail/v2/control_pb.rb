# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/control.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'


descriptor_data = "\n$google/cloud/retail/v2/control.proto\x12\x16google.cloud.retail.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/retail/v2/common.proto\"\xa6\x03\n\x07\x43ontrol\x12,\n\x04rule\x18\x04 \x01(\x0b\x32\x1c.google.cloud.retail.v2.RuleH\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12*\n\x1d\x61ssociated_serving_config_ids\x18\x05 \x03(\tB\x03\xe0\x41\x03\x12\x44\n\x0esolution_types\x18\x06 \x03(\x0e\x32$.google.cloud.retail.v2.SolutionTypeB\x06\xe0\x41\x02\xe0\x41\x05\x12O\n\x18search_solution_use_case\x18\x07 \x03(\x0e\x32-.google.cloud.retail.v2.SearchSolutionUseCase:q\xea\x41n\n\x1dretail.googleapis.com/Control\x12Mprojects/{project}/locations/{location}/catalogs/{catalog}/controls/{control}B\t\n\x07\x63ontrolB\xb7\x01\n\x1a\x63om.google.cloud.retail.v2B\x0c\x43ontrolProtoP\x01Z2cloud.google.com/go/retail/apiv2/retailpb;retailpb\xa2\x02\x06RETAIL\xaa\x02\x16Google.Cloud.Retail.V2\xca\x02\x16Google\\Cloud\\Retail\\V2\xea\x02\x19Google::Cloud::Retail::V2b\x06proto3"

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
    ["google.cloud.retail.v2.Rule", "google/cloud/retail/v2/common.proto"],
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
    module Retail
      module V2
        Control = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Control").msgclass
      end
    end
  end
end
