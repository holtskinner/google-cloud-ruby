# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recommendationengine/v1beta1/user_event.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/recommendationengine/v1beta1/catalog_pb'
require 'google/cloud/recommendationengine/v1beta1/common_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n:google/cloud/recommendationengine/v1beta1/user_event.proto\x12)google.cloud.recommendationengine.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x37google/cloud/recommendationengine/v1beta1/catalog.proto\x1a\x36google/cloud/recommendationengine/v1beta1/common.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x92\x04\n\tUserEvent\x12\x17\n\nevent_type\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12K\n\tuser_info\x18\x02 \x01(\x0b\x32\x33.google.cloud.recommendationengine.v1beta1.UserInfoB\x03\xe0\x41\x02\x12Q\n\x0c\x65vent_detail\x18\x03 \x01(\x0b\x32\x36.google.cloud.recommendationengine.v1beta1.EventDetailB\x03\xe0\x41\x01\x12`\n\x14product_event_detail\x18\x04 \x01(\x0b\x32=.google.cloud.recommendationengine.v1beta1.ProductEventDetailB\x03\xe0\x41\x01\x12\x33\n\nevent_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\x12[\n\x0c\x65vent_source\x18\x06 \x01(\x0e\x32@.google.cloud.recommendationengine.v1beta1.UserEvent.EventSourceB\x03\xe0\x41\x01\"X\n\x0b\x45ventSource\x12\x1c\n\x18\x45VENT_SOURCE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41UTOML\x10\x01\x12\r\n\tECOMMERCE\x10\x02\x12\x10\n\x0c\x42\x41TCH_UPLOAD\x10\x03\"\x8d\x01\n\x08UserInfo\x12\x17\n\nvisitor_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x07user_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x17\n\nip_address\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x17\n\nuser_agent\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12 \n\x13\x64irect_user_request\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\xeb\x01\n\x0b\x45ventDetail\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0creferrer_uri\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0cpage_view_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1b\n\x0e\x65xperiment_ids\x18\x03 \x03(\tB\x03\xe0\x41\x01\x12!\n\x14recommendation_token\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12T\n\x10\x65vent_attributes\x18\x05 \x01(\x0b\x32\x35.google.cloud.recommendationengine.v1beta1.FeatureMapB\x03\xe0\x41\x01\"\xea\x02\n\x12ProductEventDetail\x12\x14\n\x0csearch_query\x18\x01 \x01(\t\x12\x61\n\x0fpage_categories\x18\x02 \x03(\x0b\x32H.google.cloud.recommendationengine.v1beta1.CatalogItem.CategoryHierarchy\x12Q\n\x0fproduct_details\x18\x03 \x03(\x0b\x32\x38.google.cloud.recommendationengine.v1beta1.ProductDetail\x12\x0f\n\x07list_id\x18\x04 \x01(\t\x12\x14\n\x07\x63\x61rt_id\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x61\n\x14purchase_transaction\x18\x06 \x01(\x0b\x32>.google.cloud.recommendationengine.v1beta1.PurchaseTransactionB\x03\xe0\x41\x01\"\xf2\x02\n\x13PurchaseTransaction\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x14\n\x07revenue\x18\x02 \x01(\x02\x42\x03\xe0\x41\x02\x12]\n\x05taxes\x18\x03 \x03(\x0b\x32I.google.cloud.recommendationengine.v1beta1.PurchaseTransaction.TaxesEntryB\x03\xe0\x41\x01\x12]\n\x05\x63osts\x18\x04 \x03(\x0b\x32I.google.cloud.recommendationengine.v1beta1.PurchaseTransaction.CostsEntryB\x03\xe0\x41\x01\x12\x1a\n\rcurrency_code\x18\x06 \x01(\tB\x03\xe0\x41\x02\x1a,\n\nTaxesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x02:\x02\x38\x01\x1a,\n\nCostsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x02:\x02\x38\x01\"\xe6\x02\n\rProductDetail\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1a\n\rcurrency_code\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1b\n\x0eoriginal_price\x18\x03 \x01(\x02\x42\x03\xe0\x41\x01\x12\x1a\n\rdisplay_price\x18\x04 \x01(\x02\x42\x03\xe0\x41\x01\x12\x62\n\x0bstock_state\x18\x05 \x01(\x0e\x32H.google.cloud.recommendationengine.v1beta1.ProductCatalogItem.StockStateB\x03\xe0\x41\x01\x12\x15\n\x08quantity\x18\x06 \x01(\x05\x42\x03\xe0\x41\x01\x12\x1f\n\x12\x61vailable_quantity\x18\x07 \x01(\x05\x42\x03\xe0\x41\x01\x12S\n\x0fitem_attributes\x18\x08 \x01(\x0b\x32\x35.google.cloud.recommendationengine.v1beta1.FeatureMapB\x03\xe0\x41\x01\x42\xa3\x02\n-com.google.cloud.recommendationengine.v1beta1P\x01Zacloud.google.com/go/recommendationengine/apiv1beta1/recommendationenginepb;recommendationenginepb\xa2\x02\x05RECAI\xaa\x02)Google.Cloud.RecommendationEngine.V1Beta1\xca\x02)Google\\Cloud\\RecommendationEngine\\V1beta1\xea\x02,Google::Cloud::RecommendationEngine::V1beta1b\x06proto3"

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
    ["google.cloud.recommendationengine.v1beta1.FeatureMap", "google/cloud/recommendationengine/v1beta1/common.proto"],
    ["google.cloud.recommendationengine.v1beta1.CatalogItem.CategoryHierarchy", "google/cloud/recommendationengine/v1beta1/catalog.proto"],
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
    module RecommendationEngine
      module V1beta1
        UserEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.UserEvent").msgclass
        UserEvent::EventSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.UserEvent.EventSource").enummodule
        UserInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.UserInfo").msgclass
        EventDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.EventDetail").msgclass
        ProductEventDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ProductEventDetail").msgclass
        PurchaseTransaction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.PurchaseTransaction").msgclass
        ProductDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ProductDetail").msgclass
      end
    end
  end
end
