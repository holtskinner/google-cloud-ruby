# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"
require "gapic/rest"
require "google/cloud/dialogflow/v2/conversation_profile_pb"
require "google/cloud/dialogflow/v2/conversation_profiles/rest"


class ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_list_conversation_profiles
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::ListConversationProfilesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_conversation_profiles_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ServiceStub.stub :transcode_list_conversation_profiles_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_conversation_profiles_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_conversation_profiles({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_conversation_profiles parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_conversation_profiles ::Google::Cloud::Dialogflow::V2::ListConversationProfilesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_conversation_profiles({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_conversation_profiles(::Google::Cloud::Dialogflow::V2::ListConversationProfilesRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_conversation_profiles_client_stub.call_count
      end
    end
  end

  def test_get_conversation_profile
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::ConversationProfile.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_conversation_profile_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ServiceStub.stub :transcode_get_conversation_profile_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_conversation_profile_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_conversation_profile({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_conversation_profile name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_conversation_profile ::Google::Cloud::Dialogflow::V2::GetConversationProfileRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_conversation_profile({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_conversation_profile(::Google::Cloud::Dialogflow::V2::GetConversationProfileRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_conversation_profile_client_stub.call_count
      end
    end
  end

  def test_create_conversation_profile
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::ConversationProfile.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    conversation_profile = {}

    create_conversation_profile_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ServiceStub.stub :transcode_create_conversation_profile_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_conversation_profile_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_conversation_profile({ parent: parent, conversation_profile: conversation_profile }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_conversation_profile parent: parent, conversation_profile: conversation_profile do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_conversation_profile ::Google::Cloud::Dialogflow::V2::CreateConversationProfileRequest.new(parent: parent, conversation_profile: conversation_profile) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_conversation_profile({ parent: parent, conversation_profile: conversation_profile }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_conversation_profile(::Google::Cloud::Dialogflow::V2::CreateConversationProfileRequest.new(parent: parent, conversation_profile: conversation_profile), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_conversation_profile_client_stub.call_count
      end
    end
  end

  def test_update_conversation_profile
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::ConversationProfile.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    conversation_profile = {}
    update_mask = {}

    update_conversation_profile_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ServiceStub.stub :transcode_update_conversation_profile_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_conversation_profile_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_conversation_profile({ conversation_profile: conversation_profile, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_conversation_profile conversation_profile: conversation_profile, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_conversation_profile ::Google::Cloud::Dialogflow::V2::UpdateConversationProfileRequest.new(conversation_profile: conversation_profile, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_conversation_profile({ conversation_profile: conversation_profile, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_conversation_profile(::Google::Cloud::Dialogflow::V2::UpdateConversationProfileRequest.new(conversation_profile: conversation_profile, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_conversation_profile_client_stub.call_count
      end
    end
  end

  def test_delete_conversation_profile
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_conversation_profile_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ServiceStub.stub :transcode_delete_conversation_profile_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_conversation_profile_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_conversation_profile({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_conversation_profile name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_conversation_profile ::Google::Cloud::Dialogflow::V2::DeleteConversationProfileRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_conversation_profile({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_conversation_profile(::Google::Cloud::Dialogflow::V2::DeleteConversationProfileRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_conversation_profile_client_stub.call_count
      end
    end
  end

  def test_set_suggestion_feature_config
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    conversation_profile = "hello world"
    participant_role = :ROLE_UNSPECIFIED
    suggestion_feature_config = {}

    set_suggestion_feature_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ServiceStub.stub :transcode_set_suggestion_feature_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_suggestion_feature_config_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_suggestion_feature_config conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_suggestion_feature_config ::Google::Cloud::Dialogflow::V2::SetSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_suggestion_feature_config(::Google::Cloud::Dialogflow::V2::SetSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_suggestion_feature_config_client_stub.call_count
      end
    end
  end

  def test_clear_suggestion_feature_config
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    conversation_profile = "hello world"
    participant_role = :ROLE_UNSPECIFIED
    suggestion_feature_type = :TYPE_UNSPECIFIED

    clear_suggestion_feature_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::ServiceStub.stub :transcode_clear_suggestion_feature_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, clear_suggestion_feature_config_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.clear_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.clear_suggestion_feature_config conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.clear_suggestion_feature_config ::Google::Cloud::Dialogflow::V2::ClearSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.clear_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.clear_suggestion_feature_config(::Google::Cloud::Dialogflow::V2::ClearSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, clear_suggestion_feature_config_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Rest::Client::Configuration, config
  end
end