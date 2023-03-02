# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/inventory/v1/key_tracking_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/kms/inventory/v1/key_tracking_service.proto", :syntax => :proto3) do
    add_message "google.cloud.kms.inventory.v1.GetProtectedResourcesSummaryRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.kms.inventory.v1.ProtectedResourcesSummary" do
      optional :name, :string, 5
      optional :resource_count, :int64, 1
      optional :project_count, :int32, 2
      map :resource_types, :string, :int64, 3
      map :cloud_products, :string, :int64, 6
      map :locations, :string, :int64, 4
    end
    add_message "google.cloud.kms.inventory.v1.SearchProtectedResourcesRequest" do
      optional :scope, :string, 2
      optional :crypto_key, :string, 1
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.cloud.kms.inventory.v1.SearchProtectedResourcesResponse" do
      repeated :protected_resources, :message, 1, "google.cloud.kms.inventory.v1.ProtectedResource"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.kms.inventory.v1.ProtectedResource" do
      optional :name, :string, 1
      optional :project, :string, 2
      optional :project_id, :string, 9
      optional :cloud_product, :string, 8
      optional :resource_type, :string, 3
      optional :location, :string, 4
      map :labels, :string, :string, 5
      optional :crypto_key_version, :string, 6
      repeated :crypto_key_versions, :string, 10
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
    end
  end
end

module Google
  module Cloud
    module Kms
      module Inventory
        module V1
          GetProtectedResourcesSummaryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.GetProtectedResourcesSummaryRequest").msgclass
          ProtectedResourcesSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.ProtectedResourcesSummary").msgclass
          SearchProtectedResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.SearchProtectedResourcesRequest").msgclass
          SearchProtectedResourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.SearchProtectedResourcesResponse").msgclass
          ProtectedResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.ProtectedResource").msgclass
        end
      end
    end
  end
end
