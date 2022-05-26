# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/dataexchange/v1beta1/dataexchange.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/bigquery/dataexchange/common/common_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/wrappers_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/bigquery/dataexchange/v1beta1/dataexchange.proto", :syntax => :proto3) do
    add_message "google.cloud.bigquery.dataexchange.v1beta1.DataExchange" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :primary_contact, :string, 4
      optional :documentation, :string, 5
      optional :listing_count, :int32, 6
      optional :icon, :bytes, 7
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.DataProvider" do
      optional :name, :string, 1
      optional :primary_contact, :string, 2
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.Publisher" do
      optional :name, :string, 1
      optional :primary_contact, :string, 2
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.DestinationDatasetReference" do
      optional :dataset_id, :string, 1
      optional :project_id, :string, 2
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.DestinationDataset" do
      optional :dataset_reference, :message, 1, "google.cloud.bigquery.dataexchange.v1beta1.DestinationDatasetReference"
      optional :friendly_name, :message, 2, "google.protobuf.StringValue"
      optional :description, :message, 3, "google.protobuf.StringValue"
      map :labels, :string, :string, 4
      optional :location, :string, 5
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.Listing" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :primary_contact, :string, 4
      optional :documentation, :string, 5
      optional :state, :enum, 7, "google.cloud.bigquery.dataexchange.v1beta1.Listing.State"
      optional :icon, :bytes, 8
      optional :data_provider, :message, 9, "google.cloud.bigquery.dataexchange.v1beta1.DataProvider"
      repeated :categories, :enum, 10, "google.cloud.bigquery.dataexchange.common.Category"
      optional :publisher, :message, 11, "google.cloud.bigquery.dataexchange.v1beta1.Publisher"
      optional :request_access, :string, 12
      oneof :source do
        optional :bigquery_dataset, :message, 6, "google.cloud.bigquery.dataexchange.v1beta1.Listing.BigQueryDatasetSource"
      end
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.Listing.BigQueryDatasetSource" do
      optional :dataset, :string, 1
    end
    add_enum "google.cloud.bigquery.dataexchange.v1beta1.Listing.State" do
      value :STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesResponse" do
      repeated :data_exchanges, :message, 1, "google.cloud.bigquery.dataexchange.v1beta1.DataExchange"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesRequest" do
      optional :organization, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesResponse" do
      repeated :data_exchanges, :message, 1, "google.cloud.bigquery.dataexchange.v1beta1.DataExchange"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.GetDataExchangeRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.CreateDataExchangeRequest" do
      optional :parent, :string, 1
      optional :data_exchange_id, :string, 2
      optional :data_exchange, :message, 3, "google.cloud.bigquery.dataexchange.v1beta1.DataExchange"
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.UpdateDataExchangeRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :data_exchange, :message, 2, "google.cloud.bigquery.dataexchange.v1beta1.DataExchange"
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.DeleteDataExchangeRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.ListListingsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.ListListingsResponse" do
      repeated :listings, :message, 1, "google.cloud.bigquery.dataexchange.v1beta1.Listing"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.GetListingRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.CreateListingRequest" do
      optional :parent, :string, 1
      optional :listing_id, :string, 2
      optional :listing, :message, 3, "google.cloud.bigquery.dataexchange.v1beta1.Listing"
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.UpdateListingRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :listing, :message, 2, "google.cloud.bigquery.dataexchange.v1beta1.Listing"
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.DeleteListingRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingRequest" do
      optional :name, :string, 1
      oneof :destination do
        optional :destination_dataset, :message, 3, "google.cloud.bigquery.dataexchange.v1beta1.DestinationDataset"
      end
    end
    add_message "google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingResponse" do
    end
  end
end

module Google
  module Cloud
    module Bigquery
      module DataExchange
        module V1beta1
          DataExchange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DataExchange").msgclass
          DataProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DataProvider").msgclass
          Publisher = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Publisher").msgclass
          DestinationDatasetReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DestinationDatasetReference").msgclass
          DestinationDataset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DestinationDataset").msgclass
          Listing = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Listing").msgclass
          Listing::BigQueryDatasetSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Listing.BigQueryDatasetSource").msgclass
          Listing::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Listing.State").enummodule
          ListDataExchangesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesRequest").msgclass
          ListDataExchangesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesResponse").msgclass
          ListOrgDataExchangesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesRequest").msgclass
          ListOrgDataExchangesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesResponse").msgclass
          GetDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.GetDataExchangeRequest").msgclass
          CreateDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.CreateDataExchangeRequest").msgclass
          UpdateDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.UpdateDataExchangeRequest").msgclass
          DeleteDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DeleteDataExchangeRequest").msgclass
          ListListingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListListingsRequest").msgclass
          ListListingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListListingsResponse").msgclass
          GetListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.GetListingRequest").msgclass
          CreateListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.CreateListingRequest").msgclass
          UpdateListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.UpdateListingRequest").msgclass
          DeleteListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DeleteListingRequest").msgclass
          SubscribeListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingRequest").msgclass
          SubscribeListingResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingResponse").msgclass
        end
      end
    end
  end
end