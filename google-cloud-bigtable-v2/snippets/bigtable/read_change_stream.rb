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

# [START bigtable_v2_generated_Bigtable_ReadChangeStream_sync]
require "google/cloud/bigtable/v2"

##
# Snippet for the read_change_stream call in the Bigtable service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigtable::V2::Bigtable::Client#read_change_stream. It may
# require modification in order to execute successfully.
#
def read_change_stream
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigtable::V2::Bigtable::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigtable::V2::ReadChangeStreamRequest.new

  # Call the read_change_stream method to start streaming.
  output = client.read_change_stream request

  # The returned object is a streamed enumerable yielding elements of type
  # ::Google::Cloud::Bigtable::V2::ReadChangeStreamResponse
  output.each do |current_response|
    p current_response
  end
end
# [END bigtable_v2_generated_Bigtable_ReadChangeStream_sync]