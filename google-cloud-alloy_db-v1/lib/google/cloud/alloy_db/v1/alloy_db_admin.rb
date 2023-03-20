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

require "google/cloud/alloy_db/v1/version"

require "google/cloud/alloy_db/v1/alloy_db_admin/credentials"
require "google/cloud/alloy_db/v1/alloy_db_admin/paths"
require "google/cloud/alloy_db/v1/alloy_db_admin/operations"
require "google/cloud/alloy_db/v1/alloy_db_admin/client"

module Google
  module Cloud
    module AlloyDB
      module V1
        ##
        # Service describing handlers for resources
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/alloy_db/v1/alloy_db_admin"
        #     client = ::Google::Cloud::AlloyDB::V1::AlloyDBAdmin::Client.new
        #
        module AlloyDBAdmin
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "alloy_db_admin", "helpers.rb"
require "google/cloud/alloy_db/v1/alloy_db_admin/helpers" if ::File.file? helper_path
