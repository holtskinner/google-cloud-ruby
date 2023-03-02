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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/kms/inventory/v1/version"

require "google/cloud/kms/inventory/v1/key_dashboard_service/credentials"
require "google/cloud/kms/inventory/v1/key_dashboard_service/paths"
require "google/cloud/kms/inventory/v1/key_dashboard_service/client"
require "google/cloud/kms/inventory/v1/key_dashboard_service/rest"

module Google
  module Cloud
    module Kms
      module Inventory
        module V1
          ##
          # Provides a cross-region view of all Cloud KMS keys in a given Cloud project.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/kms/inventory/v1/key_dashboard_service"
          #     client = ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Client.new
          #
          # @example Load this service and instantiate a REST client
          #
          #     require "google/cloud/kms/inventory/v1/key_dashboard_service/rest"
          #     client = ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client.new
          #
          module KeyDashboardService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "key_dashboard_service", "helpers.rb"
require "google/cloud/kms/inventory/v1/key_dashboard_service/helpers" if ::File.file? helper_path
