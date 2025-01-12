# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/beyondcorp/clientgateways/v1/client_gateways_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\nGgoogle/cloud/beyondcorp/clientgateways/v1/client_gateways_service.proto\x12)google.cloud.beyondcorp.clientgateways.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xfd\x03\n\rClientGateway\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12R\n\x05state\x18\x04 \x01(\x0e\x32>.google.cloud.beyondcorp.clientgateways.v1.ClientGateway.StateB\x03\xe0\x41\x03\x12\x0f\n\x02id\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12%\n\x18\x63lient_connector_service\x18\x06 \x01(\tB\x03\xe0\x41\x03\"j\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\x0c\n\x08UPDATING\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\x0b\n\x07RUNNING\x10\x04\x12\x08\n\x04\x44OWN\x10\x05\x12\t\n\x05\x45RROR\x10\x06:u\xea\x41r\n\'beyondcorp.googleapis.com/ClientGateway\x12Gprojects/{project}/locations/{location}/clientGateways/{client_gateway}\"\xb9\x01\n\x19ListClientGatewaysRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'beyondcorp.googleapis.com/ClientGateway\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x9d\x01\n\x1aListClientGatewaysResponse\x12Q\n\x0f\x63lient_gateways\x18\x01 \x03(\x0b\x32\x38.google.cloud.beyondcorp.clientgateways.v1.ClientGateway\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"X\n\x17GetClientGatewayRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'beyondcorp.googleapis.com/ClientGateway\"\x89\x02\n\x1a\x43reateClientGatewayRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'beyondcorp.googleapis.com/ClientGateway\x12\x1e\n\x11\x63lient_gateway_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12U\n\x0e\x63lient_gateway\x18\x03 \x01(\x0b\x32\x38.google.cloud.beyondcorp.clientgateways.v1.ClientGatewayB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\x90\x01\n\x1a\x44\x65leteClientGatewayRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'beyondcorp.googleapis.com/ClientGateway\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"\x8d\x02\n\x1e\x43lientGatewayOperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x32\xc7\x08\n\x15\x43lientGatewaysService\x12\xe6\x01\n\x12ListClientGateways\x12\x44.google.cloud.beyondcorp.clientgateways.v1.ListClientGatewaysRequest\x1a\x45.google.cloud.beyondcorp.clientgateways.v1.ListClientGatewaysResponse\"C\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{parent=projects/*/locations/*}/clientGateways\xda\x41\x06parent\x12\xd3\x01\n\x10GetClientGateway\x12\x42.google.cloud.beyondcorp.clientgateways.v1.GetClientGatewayRequest\x1a\x38.google.cloud.beyondcorp.clientgateways.v1.ClientGateway\"A\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{name=projects/*/locations/*/clientGateways/*}\xda\x41\x04name\x12\xa4\x02\n\x13\x43reateClientGateway\x12\x45.google.cloud.beyondcorp.clientgateways.v1.CreateClientGatewayRequest\x1a\x1d.google.longrunning.Operation\"\xa6\x01\x82\xd3\xe4\x93\x02\x44\"2/v1/{parent=projects/*/locations/*}/clientGateways:\x0e\x63lient_gateway\xda\x41\'parent,client_gateway,client_gateway_id\xca\x41/\n\rClientGateway\x12\x1e\x43lientGatewayOperationMetadata\x12\xf8\x01\n\x13\x44\x65leteClientGateway\x12\x45.google.cloud.beyondcorp.clientgateways.v1.DeleteClientGatewayRequest\x1a\x1d.google.longrunning.Operation\"{\x82\xd3\xe4\x93\x02\x34*2/v1/{name=projects/*/locations/*/clientGateways/*}\xda\x41\x04name\xca\x41\x37\n\x15google.protobuf.Empty\x12\x1e\x43lientGatewayOperationMetadata\x1aM\xca\x41\x19\x62\x65yondcorp.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xac\x02\n-com.google.cloud.beyondcorp.clientgateways.v1B\x1a\x43lientGatewaysServiceProtoP\x01ZUcloud.google.com/go/beyondcorp/clientgateways/apiv1/clientgatewayspb;clientgatewayspb\xaa\x02)Google.Cloud.BeyondCorp.ClientGateways.V1\xca\x02)Google\\Cloud\\BeyondCorp\\ClientGateways\\V1\xea\x02-Google::Cloud::BeyondCorp::ClientGateways::V1b\x06proto3"

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
    module BeyondCorp
      module ClientGateways
        module V1
          ClientGateway = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.ClientGateway").msgclass
          ClientGateway::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.ClientGateway.State").enummodule
          ListClientGatewaysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.ListClientGatewaysRequest").msgclass
          ListClientGatewaysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.ListClientGatewaysResponse").msgclass
          GetClientGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.GetClientGatewayRequest").msgclass
          CreateClientGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.CreateClientGatewayRequest").msgclass
          DeleteClientGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.DeleteClientGatewayRequest").msgclass
          ClientGatewayOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.clientgateways.v1.ClientGatewayOperationMetadata").msgclass
        end
      end
    end
  end
end
