# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/index_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/index_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n.google/cloud/aiplatform/v1/index_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/aiplatform/v1/index.proto\x1a*google/cloud/aiplatform/v1/operation.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\x86\x01\n\x12\x43reateIndexRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x35\n\x05index\x18\x02 \x01(\x0b\x32!.google.cloud.aiplatform.v1.IndexB\x03\xe0\x41\x02\"\xe6\x01\n\x1c\x43reateIndexOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\x12v\n*nearest_neighbor_search_operation_metadata\x18\x02 \x01(\x0b\x32\x42.google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata\"H\n\x0fGetIndexRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Index\"\xb5\x01\n\x12ListIndexesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\x12-\n\tread_mask\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"b\n\x13ListIndexesResponse\x12\x32\n\x07indexes\x18\x01 \x03(\x0b\x32!.google.cloud.aiplatform.v1.Index\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"|\n\x12UpdateIndexRequest\x12\x35\n\x05index\x18\x01 \x01(\x0b\x32!.google.cloud.aiplatform.v1.IndexB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\xe6\x01\n\x1cUpdateIndexOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\x12v\n*nearest_neighbor_search_operation_metadata\x18\x02 \x01(\x0b\x32\x42.google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata\"K\n\x12\x44\x65leteIndexRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Index\"\x91\x01\n\x17UpsertDatapointsRequest\x12\x36\n\x05index\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Index\x12>\n\ndatapoints\x18\x02 \x03(\x0b\x32*.google.cloud.aiplatform.v1.IndexDatapoint\"\x1a\n\x18UpsertDatapointsResponse\"h\n\x17RemoveDatapointsRequest\x12\x36\n\x05index\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Index\x12\x15\n\rdatapoint_ids\x18\x02 \x03(\t\"\x1a\n\x18RemoveDatapointsResponse\"\xc9\x06\n&NearestNeighborSearchOperationMetadata\x12{\n\x18\x63ontent_validation_stats\x18\x01 \x03(\x0b\x32Y.google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.ContentValidationStats\x12\x18\n\x10\x64\x61ta_bytes_count\x18\x02 \x01(\x03\x1a\xb2\x03\n\x0bRecordError\x12r\n\nerror_type\x18\x01 \x01(\x0e\x32^.google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType\x12\x15\n\rerror_message\x18\x02 \x01(\t\x12\x16\n\x0esource_gcs_uri\x18\x03 \x01(\t\x12\x14\n\x0c\x65mbedding_id\x18\x04 \x01(\t\x12\x12\n\nraw_record\x18\x05 \x01(\t\"\xd5\x01\n\x0fRecordErrorType\x12\x1a\n\x16\x45RROR_TYPE_UNSPECIFIED\x10\x00\x12\x0e\n\nEMPTY_LINE\x10\x01\x12\x17\n\x13INVALID_JSON_SYNTAX\x10\x02\x12\x16\n\x12INVALID_CSV_SYNTAX\x10\x03\x12\x17\n\x13INVALID_AVRO_SYNTAX\x10\x04\x12\x18\n\x14INVALID_EMBEDDING_ID\x10\x05\x12\x1b\n\x17\x45MBEDDING_SIZE_MISMATCH\x10\x06\x12\x15\n\x11NAMESPACE_MISSING\x10\x07\x1a\xd2\x01\n\x16\x43ontentValidationStats\x12\x16\n\x0esource_gcs_uri\x18\x01 \x01(\t\x12\x1a\n\x12valid_record_count\x18\x02 \x01(\x03\x12\x1c\n\x14invalid_record_count\x18\x03 \x01(\x03\x12\x66\n\x0epartial_errors\x18\x04 \x03(\x0b\x32N.google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError2\xb6\x0b\n\x0cIndexService\x12\xcf\x01\n\x0b\x43reateIndex\x12..google.cloud.aiplatform.v1.CreateIndexRequest\x1a\x1d.google.longrunning.Operation\"q\x82\xd3\xe4\x93\x02\x34\"+/v1/{parent=projects/*/locations/*}/indexes:\x05index\xda\x41\x0cparent,index\xca\x41%\n\x05Index\x12\x1c\x43reateIndexOperationMetadata\x12\x96\x01\n\x08GetIndex\x12+.google.cloud.aiplatform.v1.GetIndexRequest\x1a!.google.cloud.aiplatform.v1.Index\":\x82\xd3\xe4\x93\x02-\x12+/v1/{name=projects/*/locations/*/indexes/*}\xda\x41\x04name\x12\xac\x01\n\x0bListIndexes\x12..google.cloud.aiplatform.v1.ListIndexesRequest\x1a/.google.cloud.aiplatform.v1.ListIndexesResponse\"<\x82\xd3\xe4\x93\x02-\x12+/v1/{parent=projects/*/locations/*}/indexes\xda\x41\x06parent\x12\xda\x01\n\x0bUpdateIndex\x12..google.cloud.aiplatform.v1.UpdateIndexRequest\x1a\x1d.google.longrunning.Operation\"|\x82\xd3\xe4\x93\x02:21/v1/{index.name=projects/*/locations/*/indexes/*}:\x05index\xda\x41\x11index,update_mask\xca\x41%\n\x05Index\x12\x1cUpdateIndexOperationMetadata\x12\xcb\x01\n\x0b\x44\x65leteIndex\x12..google.cloud.aiplatform.v1.DeleteIndexRequest\x1a\x1d.google.longrunning.Operation\"m\x82\xd3\xe4\x93\x02-*+/v1/{name=projects/*/locations/*/indexes/*}\xda\x41\x04name\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17\x44\x65leteOperationMetadata\x12\xc7\x01\n\x10UpsertDatapoints\x12\x33.google.cloud.aiplatform.v1.UpsertDatapointsRequest\x1a\x34.google.cloud.aiplatform.v1.UpsertDatapointsResponse\"H\x82\xd3\xe4\x93\x02\x42\"=/v1/{index=projects/*/locations/*/indexes/*}:upsertDatapoints:\x01*\x12\xc7\x01\n\x10RemoveDatapoints\x12\x33.google.cloud.aiplatform.v1.RemoveDatapointsRequest\x1a\x34.google.cloud.aiplatform.v1.RemoveDatapointsResponse\"H\x82\xd3\xe4\x93\x02\x42\"=/v1/{index=projects/*/locations/*/indexes/*}:removeDatapoints:\x01*\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xcf\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x11IndexServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.cloud.aiplatform.v1.Index", "google/cloud/aiplatform/v1/index.proto"],
    ["google.cloud.aiplatform.v1.GenericOperationMetadata", "google/cloud/aiplatform/v1/operation.proto"],
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
    module AIPlatform
      module V1
        CreateIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateIndexRequest").msgclass
        CreateIndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateIndexOperationMetadata").msgclass
        GetIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetIndexRequest").msgclass
        ListIndexesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListIndexesRequest").msgclass
        ListIndexesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListIndexesResponse").msgclass
        UpdateIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateIndexRequest").msgclass
        UpdateIndexOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateIndexOperationMetadata").msgclass
        DeleteIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteIndexRequest").msgclass
        UpsertDatapointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpsertDatapointsRequest").msgclass
        UpsertDatapointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpsertDatapointsResponse").msgclass
        RemoveDatapointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RemoveDatapointsRequest").msgclass
        RemoveDatapointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.RemoveDatapointsResponse").msgclass
        NearestNeighborSearchOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata").msgclass
        NearestNeighborSearchOperationMetadata::RecordError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError").msgclass
        NearestNeighborSearchOperationMetadata::RecordError::RecordErrorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.RecordError.RecordErrorType").enummodule
        NearestNeighborSearchOperationMetadata::ContentValidationStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NearestNeighborSearchOperationMetadata.ContentValidationStats").msgclass
      end
    end
  end
end
