# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/product_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/import_config_pb'
require 'google/cloud/retail/v2/product_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/product_service.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.CreateProductRequest" do
      optional :parent, :string, 1
      optional :product, :message, 2, "google.cloud.retail.v2.Product"
      optional :product_id, :string, 3
    end
    add_message "google.cloud.retail.v2.GetProductRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.retail.v2.UpdateProductRequest" do
      optional :product, :message, 1, "google.cloud.retail.v2.Product"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :allow_missing, :bool, 3
    end
    add_message "google.cloud.retail.v2.DeleteProductRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.retail.v2.ListProductsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :read_mask, :message, 5, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.retail.v2.ListProductsResponse" do
      repeated :products, :message, 1, "google.cloud.retail.v2.Product"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.retail.v2.SetInventoryRequest" do
      optional :inventory, :message, 1, "google.cloud.retail.v2.Product"
      optional :set_mask, :message, 2, "google.protobuf.FieldMask"
      optional :set_time, :message, 3, "google.protobuf.Timestamp"
      optional :allow_missing, :bool, 4
    end
    add_message "google.cloud.retail.v2.SetInventoryMetadata" do
    end
    add_message "google.cloud.retail.v2.SetInventoryResponse" do
    end
    add_message "google.cloud.retail.v2.AddFulfillmentPlacesRequest" do
      optional :product, :string, 1
      optional :type, :string, 2
      repeated :place_ids, :string, 3
      optional :add_time, :message, 4, "google.protobuf.Timestamp"
      optional :allow_missing, :bool, 5
    end
    add_message "google.cloud.retail.v2.AddFulfillmentPlacesMetadata" do
    end
    add_message "google.cloud.retail.v2.AddFulfillmentPlacesResponse" do
    end
    add_message "google.cloud.retail.v2.RemoveFulfillmentPlacesRequest" do
      optional :product, :string, 1
      optional :type, :string, 2
      repeated :place_ids, :string, 3
      optional :remove_time, :message, 4, "google.protobuf.Timestamp"
      optional :allow_missing, :bool, 5
    end
    add_message "google.cloud.retail.v2.RemoveFulfillmentPlacesMetadata" do
    end
    add_message "google.cloud.retail.v2.RemoveFulfillmentPlacesResponse" do
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        CreateProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CreateProductRequest").msgclass
        GetProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.GetProductRequest").msgclass
        UpdateProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.UpdateProductRequest").msgclass
        DeleteProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.DeleteProductRequest").msgclass
        ListProductsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ListProductsRequest").msgclass
        ListProductsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ListProductsResponse").msgclass
        SetInventoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SetInventoryRequest").msgclass
        SetInventoryMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SetInventoryMetadata").msgclass
        SetInventoryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SetInventoryResponse").msgclass
        AddFulfillmentPlacesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddFulfillmentPlacesRequest").msgclass
        AddFulfillmentPlacesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddFulfillmentPlacesMetadata").msgclass
        AddFulfillmentPlacesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.AddFulfillmentPlacesResponse").msgclass
        RemoveFulfillmentPlacesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveFulfillmentPlacesRequest").msgclass
        RemoveFulfillmentPlacesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveFulfillmentPlacesMetadata").msgclass
        RemoveFulfillmentPlacesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RemoveFulfillmentPlacesResponse").msgclass
      end
    end
  end
end
