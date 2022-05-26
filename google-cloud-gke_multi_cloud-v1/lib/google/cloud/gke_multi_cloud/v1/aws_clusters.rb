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

require "google/cloud/gke_multi_cloud/v1/version"

require "google/cloud/gke_multi_cloud/v1/aws_clusters/credentials"
require "google/cloud/gke_multi_cloud/v1/aws_clusters/paths"
require "google/cloud/gke_multi_cloud/v1/aws_clusters/operations"
require "google/cloud/gke_multi_cloud/v1/aws_clusters/client"

module Google
  module Cloud
    module GkeMultiCloud
      module V1
        ##
        # The AwsClusters API provides a single centrally managed service
        # to create and manage Anthos clusters that run on AWS infrastructure.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/gke_multi_cloud/v1/aws_clusters"
        #     client = ::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client.new
        #
        module AwsClusters
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "aws_clusters", "helpers.rb"
require "google/cloud/gke_multi_cloud/v1/aws_clusters/helpers" if ::File.file? helper_path