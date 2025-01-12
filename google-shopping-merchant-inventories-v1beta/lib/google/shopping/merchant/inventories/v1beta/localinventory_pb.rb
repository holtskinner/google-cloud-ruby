# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/inventories/v1beta/localinventory.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/shopping/type/types_pb'
require 'google/type/interval_pb'


descriptor_data = "\n@google/shopping/merchant/inventories/v1beta/localinventory.proto\x12+google.shopping.merchant.inventories.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/shopping/type/types.proto\x1a\x1agoogle/type/interval.proto\"\x8a\x05\n\x0eLocalInventory\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07\x61\x63\x63ount\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x17\n\nstore_code\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12*\n\x05price\x18\x04 \x01(\x0b\x32\x1b.google.shopping.type.Price\x12/\n\nsale_price\x18\x05 \x01(\x0b\x32\x1b.google.shopping.type.Price\x12\x38\n\x19sale_price_effective_date\x18\x06 \x01(\x0b\x32\x15.google.type.Interval\x12\x19\n\x0c\x61vailability\x18\x07 \x01(\tH\x00\x88\x01\x01\x12\x15\n\x08quantity\x18\x08 \x01(\x03H\x01\x88\x01\x01\x12\x1a\n\rpickup_method\x18\t \x01(\tH\x02\x88\x01\x01\x12\x17\n\npickup_sla\x18\n \x01(\tH\x03\x88\x01\x01\x12%\n\x18instore_product_location\x18\x0b \x01(\tH\x04\x88\x01\x01\x12@\n\x11\x63ustom_attributes\x18\x0c \x03(\x0b\x32%.google.shopping.type.CustomAttribute:s\xea\x41p\n)merchantapi.googleapis.com/LocalInventory\x12\x43\x61\x63\x63ounts/{account}/products/{product}/localInventories/{store_code}B\x0f\n\r_availabilityB\x0b\n\t_quantityB\x10\n\x0e_pickup_methodB\r\n\x0b_pickup_slaB\x1b\n\x19_instore_product_location\"Y\n\x1bListLocalInventoriesRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x8f\x01\n\x1cListLocalInventoriesResponse\x12V\n\x11local_inventories\x18\x01 \x03(\x0b\x32;.google.shopping.merchant.inventories.v1beta.LocalInventory\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x8d\x01\n\x1bInsertLocalInventoryRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12Y\n\x0flocal_inventory\x18\x02 \x01(\x0b\x32;.google.shopping.merchant.inventories.v1beta.LocalInventoryB\x03\xe0\x41\x02\"^\n\x1b\x44\x65leteLocalInventoryRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)merchantapi.googleapis.com/LocalInventory2\xb8\x06\n\x15LocalInventoryService\x12\x81\x02\n\x14ListLocalInventories\x12H.google.shopping.merchant.inventories.v1beta.ListLocalInventoriesRequest\x1aI.google.shopping.merchant.inventories.v1beta.ListLocalInventoriesResponse\"T\x82\xd3\xe4\x93\x02\x45\x12\x43/inventories/v1beta/{parent=accounts/*/products/*}/localInventories\xda\x41\x06parent\x12\x82\x02\n\x14InsertLocalInventory\x12H.google.shopping.merchant.inventories.v1beta.InsertLocalInventoryRequest\x1a;.google.shopping.merchant.inventories.v1beta.LocalInventory\"c\x82\xd3\xe4\x93\x02]\"J/inventories/v1beta/{parent=accounts/*/products/*}/localInventories:insert:\x0flocal_inventory\x12\xcc\x01\n\x14\x44\x65leteLocalInventory\x12H.google.shopping.merchant.inventories.v1beta.DeleteLocalInventoryRequest\x1a\x16.google.protobuf.Empty\"R\x82\xd3\xe4\x93\x02\x45*C/inventories/v1beta/{name=accounts/*/products/*/localInventories/*}\xda\x41\x04name\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\xa1\x01\n/com.google.shopping.merchant.inventories.v1betaB\x13LocalInventoryProtoP\x01ZWcloud.google.com/go/shopping/merchant/inventories/apiv1beta/inventoriespb;inventoriespbb\x06proto3"

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
    ["google.shopping.type.Price", "google/shopping/type/types.proto"],
    ["google.type.Interval", "google/type/interval.proto"],
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
  module Shopping
    module Merchant
      module Inventories
        module V1beta
          LocalInventory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.LocalInventory").msgclass
          ListLocalInventoriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.ListLocalInventoriesRequest").msgclass
          ListLocalInventoriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.ListLocalInventoriesResponse").msgclass
          InsertLocalInventoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.InsertLocalInventoryRequest").msgclass
          DeleteLocalInventoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.DeleteLocalInventoryRequest").msgclass
        end
      end
    end
  end
end
