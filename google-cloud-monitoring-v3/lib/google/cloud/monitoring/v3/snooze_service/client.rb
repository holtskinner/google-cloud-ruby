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

require "google/cloud/errors"
require "google/monitoring/v3/snooze_service_pb"

module Google
  module Cloud
    module Monitoring
      module V3
        module SnoozeService
          ##
          # Client for the SnoozeService service.
          #
          # The SnoozeService API is used to temporarily prevent an alert policy from
          # generating alerts. A Snooze is a description of the criteria under which one
          # or more alert policies should not fire alerts for the specified duration.
          #
          class Client
            include Paths

            # @private
            attr_reader :snooze_service_stub

            ##
            # Configure the SnoozeService Client class.
            #
            # See {::Google::Cloud::Monitoring::V3::SnoozeService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all SnoozeService clients
            #   ::Google::Cloud::Monitoring::V3::SnoozeService::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Monitoring", "V3"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.create_snooze.timeout = 30.0

                default_config.rpcs.list_snoozes.timeout = 30.0
                default_config.rpcs.list_snoozes.retry_policy = {
                  initial_delay: 0.1, max_delay: 30.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.get_snooze.timeout = 30.0
                default_config.rpcs.get_snooze.retry_policy = {
                  initial_delay: 0.1, max_delay: 30.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.update_snooze.timeout = 30.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the SnoozeService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Monitoring::V3::SnoozeService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new SnoozeService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Monitoring::V3::SnoozeService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Monitoring::V3::SnoozeService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the SnoozeService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/monitoring/v3/snooze_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @snooze_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Monitoring::V3::SnoozeService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool
              )
            end

            # Service calls

            ##
            # Creates a `Snooze` that will prevent alerts, which match the provided
            # criteria, from being opened. The `Snooze` applies for a specific time
            # interval.
            #
            # @overload create_snooze(request, options = nil)
            #   Pass arguments to `create_snooze` via a request object, either of type
            #   {::Google::Cloud::Monitoring::V3::CreateSnoozeRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Monitoring::V3::CreateSnoozeRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_snooze(parent: nil, snooze: nil)
            #   Pass arguments to `create_snooze` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The
            #     [project](https://cloud.google.com/monitoring/api/v3#project_name) in which
            #     a `Snooze` should be created. The format is:
            #
            #         projects/[PROJECT_ID_OR_NUMBER]
            #   @param snooze [::Google::Cloud::Monitoring::V3::Snooze, ::Hash]
            #     Required. The `Snooze` to create. Omit the `name` field, as it will be
            #     filled in by the API.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Monitoring::V3::Snooze]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Monitoring::V3::Snooze]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/monitoring/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Monitoring::V3::SnoozeService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Monitoring::V3::CreateSnoozeRequest.new
            #
            #   # Call the create_snooze method.
            #   result = client.create_snooze request
            #
            #   # The returned object is of type Google::Cloud::Monitoring::V3::Snooze.
            #   p result
            #
            def create_snooze request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Monitoring::V3::CreateSnoozeRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_snooze.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Monitoring::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_snooze.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_snooze.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @snooze_service_stub.call_rpc :create_snooze, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Lists the `Snooze`s associated with a project. Can optionally pass in
            # `filter`, which specifies predicates to match `Snooze`s.
            #
            # @overload list_snoozes(request, options = nil)
            #   Pass arguments to `list_snoozes` via a request object, either of type
            #   {::Google::Cloud::Monitoring::V3::ListSnoozesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Monitoring::V3::ListSnoozesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_snoozes(parent: nil, filter: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_snoozes` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The
            #     [project](https://cloud.google.com/monitoring/api/v3#project_name) whose
            #     `Snooze`s should be listed. The format is:
            #
            #         projects/[PROJECT_ID_OR_NUMBER]
            #   @param filter [::String]
            #     Optional. Optional filter to restrict results to the given criteria. The
            #     following fields are supported.
            #
            #       * `interval.start_time`
            #       * `interval.end_time`
            #
            #     For example:
            #
            #         ```
            #         interval.start_time > "2022-03-11T00:00:00-08:00" AND
            #             interval.end_time < "2022-03-12T00:00:00-08:00"
            #         ```
            #   @param page_size [::Integer]
            #     Optional. The maximum number of results to return for a single query. The
            #     server may further constrain the maximum number of results returned in a
            #     single page. The value should be in the range [1, 1000]. If the value given
            #     is outside this range, the server will decide the number of results to be
            #     returned.
            #   @param page_token [::String]
            #     Optional. The `next_page_token` from a previous call to
            #     `ListSnoozesRequest` to get the next page of results.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Monitoring::V3::Snooze>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Monitoring::V3::Snooze>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/monitoring/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Monitoring::V3::SnoozeService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Monitoring::V3::ListSnoozesRequest.new
            #
            #   # Call the list_snoozes method.
            #   result = client.list_snoozes request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::Monitoring::V3::Snooze.
            #     p item
            #   end
            #
            def list_snoozes request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Monitoring::V3::ListSnoozesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_snoozes.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Monitoring::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_snoozes.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_snoozes.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @snooze_service_stub.call_rpc :list_snoozes, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @snooze_service_stub, :list_snoozes, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Retrieves a `Snooze` by `name`.
            #
            # @overload get_snooze(request, options = nil)
            #   Pass arguments to `get_snooze` via a request object, either of type
            #   {::Google::Cloud::Monitoring::V3::GetSnoozeRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Monitoring::V3::GetSnoozeRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_snooze(name: nil)
            #   Pass arguments to `get_snooze` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The ID of the `Snooze` to retrieve. The format is:
            #
            #         projects/[PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID]
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Monitoring::V3::Snooze]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Monitoring::V3::Snooze]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/monitoring/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Monitoring::V3::SnoozeService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Monitoring::V3::GetSnoozeRequest.new
            #
            #   # Call the get_snooze method.
            #   result = client.get_snooze request
            #
            #   # The returned object is of type Google::Cloud::Monitoring::V3::Snooze.
            #   p result
            #
            def get_snooze request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Monitoring::V3::GetSnoozeRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_snooze.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Monitoring::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_snooze.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_snooze.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @snooze_service_stub.call_rpc :get_snooze, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates a `Snooze`, identified by its `name`, with the parameters in the
            # given `Snooze` object.
            #
            # @overload update_snooze(request, options = nil)
            #   Pass arguments to `update_snooze` via a request object, either of type
            #   {::Google::Cloud::Monitoring::V3::UpdateSnoozeRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Monitoring::V3::UpdateSnoozeRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_snooze(snooze: nil, update_mask: nil)
            #   Pass arguments to `update_snooze` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param snooze [::Google::Cloud::Monitoring::V3::Snooze, ::Hash]
            #     Required. The `Snooze` to update. Must have the name field present.
            #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
            #     Required. The fields to update.
            #
            #     For each field listed in `update_mask`:
            #
            #       * If the `Snooze` object supplied in the `UpdateSnoozeRequest` has a
            #         value for that field, the value of the field in the existing `Snooze`
            #         will be set to the value of the field in the supplied `Snooze`.
            #       * If the field does not have a value in the supplied `Snooze`, the field
            #         in the existing `Snooze` is set to its default value.
            #
            #     Fields not listed retain their existing value.
            #
            #     The following are the field names that are accepted in `update_mask`:
            #
            #       * `display_name`
            #       * `interval.start_time`
            #       * `interval.end_time`
            #
            #     That said, the start time and end time of the `Snooze` determines which
            #     fields can legally be updated. Before attempting an update, users should
            #     consult the documentation for `UpdateSnoozeRequest`, which talks about
            #     which fields can be updated.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Monitoring::V3::Snooze]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Monitoring::V3::Snooze]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/monitoring/v3"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Monitoring::V3::SnoozeService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Monitoring::V3::UpdateSnoozeRequest.new
            #
            #   # Call the update_snooze method.
            #   result = client.update_snooze request
            #
            #   # The returned object is of type Google::Cloud::Monitoring::V3::Snooze.
            #   p result
            #
            def update_snooze request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Monitoring::V3::UpdateSnoozeRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_snooze.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Monitoring::V3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.snooze&.name
                header_params["snooze.name"] = request.snooze.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_snooze.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_snooze.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @snooze_service_stub.call_rpc :update_snooze, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the SnoozeService API.
            #
            # This class represents the configuration for SnoozeService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Monitoring::V3::SnoozeService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # create_snooze to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Monitoring::V3::SnoozeService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_snooze.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Monitoring::V3::SnoozeService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_snooze.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"monitoring.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              DEFAULT_ENDPOINT = "monitoring.googleapis.com"

              config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the SnoozeService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `create_snooze`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_snooze
                ##
                # RPC-specific configuration for `list_snoozes`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_snoozes
                ##
                # RPC-specific configuration for `get_snooze`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_snooze
                ##
                # RPC-specific configuration for `update_snooze`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_snooze

                # @private
                def initialize parent_rpcs = nil
                  create_snooze_config = parent_rpcs.create_snooze if parent_rpcs.respond_to? :create_snooze
                  @create_snooze = ::Gapic::Config::Method.new create_snooze_config
                  list_snoozes_config = parent_rpcs.list_snoozes if parent_rpcs.respond_to? :list_snoozes
                  @list_snoozes = ::Gapic::Config::Method.new list_snoozes_config
                  get_snooze_config = parent_rpcs.get_snooze if parent_rpcs.respond_to? :get_snooze
                  @get_snooze = ::Gapic::Config::Method.new get_snooze_config
                  update_snooze_config = parent_rpcs.update_snooze if parent_rpcs.respond_to? :update_snooze
                  @update_snooze = ::Gapic::Config::Method.new update_snooze_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
