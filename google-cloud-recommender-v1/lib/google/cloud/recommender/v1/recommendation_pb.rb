# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recommender/v1/recommendation.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/money_pb'


descriptor_data = "\n0google/cloud/recommender/v1/recommendation.proto\x12\x1bgoogle.cloud.recommender.v1\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/type/money.proto\"\xa2\t\n\x0eRecommendation\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x1b\n\x13recommender_subtype\x18\x0c \x01(\t\x12\x35\n\x11last_refresh_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12;\n\x0eprimary_impact\x18\x05 \x01(\x0b\x32#.google.cloud.recommender.v1.Impact\x12>\n\x11\x61\x64\x64itional_impact\x18\x06 \x03(\x0b\x32#.google.cloud.recommender.v1.Impact\x12\x46\n\x08priority\x18\x11 \x01(\x0e\x32\x34.google.cloud.recommender.v1.Recommendation.Priority\x12\x43\n\x07\x63ontent\x18\x07 \x01(\x0b\x32\x32.google.cloud.recommender.v1.RecommendationContent\x12H\n\nstate_info\x18\n \x01(\x0b\x32\x34.google.cloud.recommender.v1.RecommendationStateInfo\x12\x0c\n\x04\x65tag\x18\x0b \x01(\t\x12Y\n\x13\x61ssociated_insights\x18\x0e \x03(\x0b\x32<.google.cloud.recommender.v1.Recommendation.InsightReference\x12\x14\n\x0cxor_group_id\x18\x12 \x01(\t\x1a#\n\x10InsightReference\x12\x0f\n\x07insight\x18\x01 \x01(\t\"D\n\x08Priority\x12\x18\n\x14PRIORITY_UNSPECIFIED\x10\x00\x12\x06\n\x02P4\x10\x01\x12\x06\n\x02P3\x10\x02\x12\x06\n\x02P2\x10\x03\x12\x06\n\x02P1\x10\x04:\xda\x03\xea\x41\xd6\x03\n)recommender.googleapis.com/Recommendation\x12\x63projects/{project}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}\x12rbillingAccounts/{billing_account}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}\x12\x61\x66olders/{folder}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}\x12morganizations/{organization}/locations/{location}/recommenders/{recommender}/recommendations/{recommendation}\"\x89\x01\n\x15RecommendationContent\x12\x45\n\x10operation_groups\x18\x02 \x03(\x0b\x32+.google.cloud.recommender.v1.OperationGroup\x12)\n\x08overview\x18\x03 \x01(\x0b\x32\x17.google.protobuf.Struct\"L\n\x0eOperationGroup\x12:\n\noperations\x18\x01 \x03(\x0b\x32&.google.cloud.recommender.v1.Operation\"\xd7\x04\n\tOperation\x12\x0e\n\x06\x61\x63tion\x18\x01 \x01(\t\x12\x15\n\rresource_type\x18\x02 \x01(\t\x12\x10\n\x08resource\x18\x03 \x01(\t\x12\x0c\n\x04path\x18\x04 \x01(\t\x12\x17\n\x0fsource_resource\x18\x05 \x01(\t\x12\x13\n\x0bsource_path\x18\x06 \x01(\t\x12\'\n\x05value\x18\x07 \x01(\x0b\x32\x16.google.protobuf.ValueH\x00\x12\x42\n\rvalue_matcher\x18\n \x01(\x0b\x32).google.cloud.recommender.v1.ValueMatcherH\x00\x12M\n\x0cpath_filters\x18\x08 \x03(\x0b\x32\x37.google.cloud.recommender.v1.Operation.PathFiltersEntry\x12Z\n\x13path_value_matchers\x18\x0b \x03(\x0b\x32=.google.cloud.recommender.v1.Operation.PathValueMatchersEntry\x1aJ\n\x10PathFiltersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x1a\x63\n\x16PathValueMatchersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x38\n\x05value\x18\x02 \x01(\x0b\x32).google.cloud.recommender.v1.ValueMatcher:\x02\x38\x01\x42\x0c\n\npath_value\":\n\x0cValueMatcher\x12\x19\n\x0fmatches_pattern\x18\x01 \x01(\tH\x00\x42\x0f\n\rmatch_variant\"_\n\x0e\x43ostProjection\x12 \n\x04\x63ost\x18\x01 \x01(\x0b\x32\x12.google.type.Money\x12+\n\x08\x64uration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\">\n\x12SecurityProjection\x12(\n\x07\x64\x65tails\x18\x02 \x01(\x0b\x32\x17.google.protobuf.Struct\"\xd0\x02\n\x06Impact\x12>\n\x08\x63\x61tegory\x18\x01 \x01(\x0e\x32,.google.cloud.recommender.v1.Impact.Category\x12\x46\n\x0f\x63ost_projection\x18\x64 \x01(\x0b\x32+.google.cloud.recommender.v1.CostProjectionH\x00\x12N\n\x13security_projection\x18\x65 \x01(\x0b\x32/.google.cloud.recommender.v1.SecurityProjectionH\x00\"`\n\x08\x43\x61tegory\x12\x18\n\x14\x43\x41TEGORY_UNSPECIFIED\x10\x00\x12\x08\n\x04\x43OST\x10\x01\x12\x0c\n\x08SECURITY\x10\x02\x12\x0f\n\x0bPERFORMANCE\x10\x03\x12\x11\n\rMANAGEABILITY\x10\x04\x42\x0c\n\nprojection\"\xde\x02\n\x17RecommendationStateInfo\x12I\n\x05state\x18\x01 \x01(\x0e\x32:.google.cloud.recommender.v1.RecommendationStateInfo.State\x12_\n\x0estate_metadata\x18\x02 \x03(\x0b\x32G.google.cloud.recommender.v1.RecommendationStateInfo.StateMetadataEntry\x1a\x34\n\x12StateMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"a\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\x0b\n\x07\x43LAIMED\x10\x06\x12\r\n\tSUCCEEDED\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\r\n\tDISMISSED\x10\x05\x42\xde\x03\n\x1f\x63om.google.cloud.recommender.v1P\x01ZAcloud.google.com/go/recommender/apiv1/recommenderpb;recommenderpb\xa2\x02\x04\x43REC\xaa\x02\x1bGoogle.Cloud.Recommender.V1\xea\x41\xcf\x02\n&recommender.googleapis.com/Recommender\x12\x42projects/{project}/locations/{location}/recommenders/{recommender}\x12QbillingAccounts/{billing_account}/locations/{location}/recommenders/{recommender}\x12@folders/{folder}/locations/{location}/recommenders/{recommender}\x12Lorganizations/{organization}/locations/{location}/recommenders/{recommender}b\x06proto3"

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
    ["google.type.Money", "google/type/money.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
        Recommendation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Recommendation").msgclass
        Recommendation::InsightReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Recommendation.InsightReference").msgclass
        Recommendation::Priority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Recommendation.Priority").enummodule
        RecommendationContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.RecommendationContent").msgclass
        OperationGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.OperationGroup").msgclass
        Operation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Operation").msgclass
        ValueMatcher = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.ValueMatcher").msgclass
        CostProjection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.CostProjection").msgclass
        SecurityProjection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.SecurityProjection").msgclass
        Impact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Impact").msgclass
        Impact::Category = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.Impact.Category").enummodule
        RecommendationStateInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.RecommendationStateInfo").msgclass
        RecommendationStateInfo::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommender.v1.RecommendationStateInfo.State").enummodule
      end
    end
  end
end
