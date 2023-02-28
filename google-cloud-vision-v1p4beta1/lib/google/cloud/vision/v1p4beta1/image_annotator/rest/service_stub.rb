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

require "google/cloud/vision/v1p4beta1/image_annotator_pb"

module Google
  module Cloud
    module Vision
      module V1p4beta1
        module ImageAnnotator
          module Rest
            ##
            # REST service stub for the ImageAnnotator service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                             numeric_enums: true,
                                                             raise_faraday_errors: false
              end

              ##
              # Baseline implementation for the batch_annotate_images REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateImagesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateImagesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateImagesResponse]
              #   A result object deserialized from the server's reply
              def batch_annotate_images request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_batch_annotate_images_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Vision::V1p4beta1::BatchAnnotateImagesResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the batch_annotate_files REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateFilesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateFilesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateFilesResponse]
              #   A result object deserialized from the server's reply
              def batch_annotate_files request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_batch_annotate_files_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::Vision::V1p4beta1::BatchAnnotateFilesResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the async_batch_annotate_images REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::AsyncBatchAnnotateImagesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def async_batch_annotate_images request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_async_batch_annotate_images_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the async_batch_annotate_files REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::AsyncBatchAnnotateFilesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def async_batch_annotate_files request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_async_batch_annotate_files_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split("=", 2) }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the batch_annotate_images REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateImagesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_batch_annotate_images_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1p4beta1/images:annotate",
                                                          body: "*",
                                                          matches: []
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the batch_annotate_files REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::BatchAnnotateFilesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_batch_annotate_files_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1p4beta1/files:annotate",
                                                          body: "*",
                                                          matches: []
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the async_batch_annotate_images REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::AsyncBatchAnnotateImagesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_async_batch_annotate_images_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1p4beta1/images:asyncBatchAnnotate",
                                                          body: "*",
                                                          matches: []
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the async_batch_annotate_files REST call
              #
              # @param request_pb [::Google::Cloud::Vision::V1p4beta1::AsyncBatchAnnotateFilesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_async_batch_annotate_files_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1p4beta1/files:asyncBatchAnnotate",
                                                          body: "*",
                                                          matches: []
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end