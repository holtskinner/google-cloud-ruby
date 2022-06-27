# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/apigee_registry/v1/version"

require "google/cloud/apigee_registry/v1/provisioning/credentials"
require "google/cloud/apigee_registry/v1/provisioning/paths"
require "google/cloud/apigee_registry/v1/provisioning/operations"
require "google/cloud/apigee_registry/v1/provisioning/client"

module Google
  module Cloud
    module ApigeeRegistry
      module V1
        ##
        # The service that is used for managing the data plane provisioning of the
        # Registry.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/apigee_registry/v1/provisioning"
        #     client = ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Client.new
        #
        module Provisioning
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "provisioning", "helpers.rb"
require "google/cloud/apigee_registry/v1/provisioning/helpers" if ::File.file? helper_path