# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/inventories/v1beta/regionalinventory.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/shopping/type/types_pb'
require 'google/type/interval_pb'


descriptor_data = "\nCgoogle/shopping/merchant/inventories/v1beta/regionalinventory.proto\x12+google.shopping.merchant.inventories.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/shopping/type/types.proto\x1a\x1agoogle/type/interval.proto\"\xcd\x03\n\x11RegionalInventory\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07\x61\x63\x63ount\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x13\n\x06region\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12*\n\x05price\x18\x04 \x01(\x0b\x32\x1b.google.shopping.type.Price\x12/\n\nsale_price\x18\x05 \x01(\x0b\x32\x1b.google.shopping.type.Price\x12\x38\n\x19sale_price_effective_date\x18\x06 \x01(\x0b\x32\x15.google.type.Interval\x12\x19\n\x0c\x61vailability\x18\x07 \x01(\tH\x00\x88\x01\x01\x12@\n\x11\x63ustom_attributes\x18\x08 \x03(\x0b\x32%.google.shopping.type.CustomAttribute:u\xea\x41r\n,merchantapi.googleapis.com/RegionalInventory\x12\x42\x61\x63\x63ounts/{account}/products/{product}/regionalInventories/{region}B\x0f\n\r_availability\"\\\n\x1eListRegionalInventoriesRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x98\x01\n\x1fListRegionalInventoriesResponse\x12\\\n\x14regional_inventories\x18\x01 \x03(\x0b\x32>.google.shopping.merchant.inventories.v1beta.RegionalInventory\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x96\x01\n\x1eInsertRegionalInventoryRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12_\n\x12regional_inventory\x18\x02 \x01(\x0b\x32>.google.shopping.merchant.inventories.v1beta.RegionalInventoryB\x03\xe0\x41\x02\"d\n\x1e\x44\x65leteRegionalInventoryRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,merchantapi.googleapis.com/RegionalInventory2\xdf\x06\n\x18RegionalInventoryService\x12\x8d\x02\n\x17ListRegionalInventories\x12K.google.shopping.merchant.inventories.v1beta.ListRegionalInventoriesRequest\x1aL.google.shopping.merchant.inventories.v1beta.ListRegionalInventoriesResponse\"W\x82\xd3\xe4\x93\x02H\x12\x46/inventories/v1beta/{parent=accounts/*/products/*}/regionalInventories\xda\x41\x06parent\x12\x91\x02\n\x17InsertRegionalInventory\x12K.google.shopping.merchant.inventories.v1beta.InsertRegionalInventoryRequest\x1a>.google.shopping.merchant.inventories.v1beta.RegionalInventory\"i\x82\xd3\xe4\x93\x02\x63\"M/inventories/v1beta/{parent=accounts/*/products/*}/regionalInventories:insert:\x12regional_inventory\x12\xd5\x01\n\x17\x44\x65leteRegionalInventory\x12K.google.shopping.merchant.inventories.v1beta.DeleteRegionalInventoryRequest\x1a\x16.google.protobuf.Empty\"U\x82\xd3\xe4\x93\x02H*F/inventories/v1beta/{name=accounts/*/products/*/regionalInventories/*}\xda\x41\x04name\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\xa4\x01\n/com.google.shopping.merchant.inventories.v1betaB\x16RegionalInventoryProtoP\x01ZWcloud.google.com/go/shopping/merchant/inventories/apiv1beta/inventoriespb;inventoriespbb\x06proto3"

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
          RegionalInventory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.RegionalInventory").msgclass
          ListRegionalInventoriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.ListRegionalInventoriesRequest").msgclass
          ListRegionalInventoriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.ListRegionalInventoriesResponse").msgclass
          InsertRegionalInventoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.InsertRegionalInventoryRequest").msgclass
          DeleteRegionalInventoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.inventories.v1beta.DeleteRegionalInventoryRequest").msgclass
        end
      end
    end
  end
end
