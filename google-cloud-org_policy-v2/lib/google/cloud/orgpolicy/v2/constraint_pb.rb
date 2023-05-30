# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/orgpolicy/v2/constraint.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n*google/cloud/orgpolicy/v2/constraint.proto\x12\x19google.cloud.orgpolicy.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb7\x05\n\nConstraint\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12S\n\x12\x63onstraint_default\x18\x04 \x01(\x0e\x32\x37.google.cloud.orgpolicy.v2.Constraint.ConstraintDefault\x12O\n\x0flist_constraint\x18\x05 \x01(\x0b\x32\x34.google.cloud.orgpolicy.v2.Constraint.ListConstraintH\x00\x12U\n\x12\x62oolean_constraint\x18\x06 \x01(\x0b\x32\x37.google.cloud.orgpolicy.v2.Constraint.BooleanConstraintH\x00\x1a=\n\x0eListConstraint\x12\x13\n\x0bsupports_in\x18\x01 \x01(\x08\x12\x16\n\x0esupports_under\x18\x02 \x01(\x08\x1a\x13\n\x11\x42ooleanConstraint\"L\n\x11\x43onstraintDefault\x12\"\n\x1e\x43ONSTRAINT_DEFAULT_UNSPECIFIED\x10\x00\x12\t\n\x05\x41LLOW\x10\x01\x12\x08\n\x04\x44\x45NY\x10\x02:\xb8\x01\xea\x41\xb4\x01\n#orgpolicy.googleapis.com/Constraint\x12+projects/{project}/constraints/{constraint}\x12)folders/{folder}/constraints/{constraint}\x12\x35organizations/{organization}/constraints/{constraint}B\x11\n\x0f\x63onstraint_typeB\xc6\x01\n\x1d\x63om.google.cloud.orgpolicy.v2B\x0f\x43onstraintProtoP\x01Z;cloud.google.com/go/orgpolicy/apiv2/orgpolicypb;orgpolicypb\xaa\x02\x19Google.Cloud.OrgPolicy.V2\xca\x02\x19Google\\Cloud\\OrgPolicy\\V2\xea\x02\x1cGoogle::Cloud::OrgPolicy::V2b\x06proto3"

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
    module OrgPolicy
      module V2
        Constraint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v2.Constraint").msgclass
        Constraint::ListConstraint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v2.Constraint.ListConstraint").msgclass
        Constraint::BooleanConstraint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v2.Constraint.BooleanConstraint").msgclass
        Constraint::ConstraintDefault = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orgpolicy.v2.Constraint.ConstraintDefault").enummodule
      end
    end
  end
end
