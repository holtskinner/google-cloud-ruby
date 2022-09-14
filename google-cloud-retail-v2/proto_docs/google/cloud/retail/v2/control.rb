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


module Google
  module Cloud
    module Retail
      module V2
        # Configures dynamic metadata that can be linked to a
        # {::Google::Cloud::Retail::V2::ServingConfig ServingConfig} and affect search or
        # recommendation results at serving time.
        # @!attribute [rw] rule
        #   @return [::Google::Cloud::Retail::V2::Rule]
        #     A rule control - a condition-action pair.
        #     Enacts a set action when the condition is triggered.
        #     For example: Boost "gShoe" when query full matches "Running Shoes".
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Fully qualified name
        #     `projects/*/locations/global/catalogs/*/controls/*`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The human readable control display name. Used in Retail UI.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is thrown.
        # @!attribute [r] associated_serving_config_ids
        #   @return [::Array<::String>]
        #     Output only. List of [serving
        #     configuration][google.cloud.retail.v2.ServingConfig] ids that are
        #     associated with this control in the same
        #     {::Google::Cloud::Retail::V2::Catalog Catalog}.
        #
        #     Note the association is managed via the
        #     {::Google::Cloud::Retail::V2::ServingConfig ServingConfig}, this is an output
        #     only denormalized view.
        # @!attribute [rw] solution_types
        #   @return [::Array<::Google::Cloud::Retail::V2::SolutionType>]
        #     Required. Immutable. The solution types that the control is used for.
        #     Currently we support setting only one type of solution at creation time.
        #
        #     Only `SOLUTION_TYPE_SEARCH` value is supported at the moment.
        #     If no solution type is provided at creation time, will default to
        #     {::Google::Cloud::Retail::V2::SolutionType::SOLUTION_TYPE_SEARCH SOLUTION_TYPE_SEARCH}.
        # @!attribute [rw] search_solution_use_case
        #   @return [::Array<::Google::Cloud::Retail::V2::SearchSolutionUseCase>]
        #     Specifies the use case for the control.
        #     Affects what condition fields can be set.
        #     Only settable by search controls.
        #     Will default to
        #     {::Google::Cloud::Retail::V2::SearchSolutionUseCase::SEARCH_SOLUTION_USE_CASE_SEARCH SEARCH_SOLUTION_USE_CASE_SEARCH}
        #     if not specified. Currently only allow one search_solution_use_case per
        #     control.
        class Control
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end