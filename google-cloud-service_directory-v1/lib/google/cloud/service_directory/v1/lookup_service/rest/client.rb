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
require "google/cloud/servicedirectory/v1/lookup_service_pb"
require "google/cloud/service_directory/v1/lookup_service/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module ServiceDirectory
      module V1
        module LookupService
          module Rest
            ##
            # REST client for the LookupService service.
            #
            # Service Directory API for looking up service data at runtime.
            #
            class Client
              include Paths

              # @private
              attr_reader :lookup_service_stub

              ##
              # Configure the LookupService Client class.
              #
              # See {::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all LookupService clients
              #   ::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "ServiceDirectory", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 15.0
                  default_config.retry_policy = {
                    initial_delay: 1.0, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 2]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the LookupService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client::Configuration}
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
              # Create a new LookupService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the LookupService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
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

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.bindings_override = @config.bindings_override
                end

                @lookup_service_stub = ::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              # Service calls

              ##
              # Returns a {::Google::Cloud::ServiceDirectory::V1::Service service} and its
              # associated endpoints.
              # Resolving a service is not considered an active developer method.
              #
              # @overload resolve_service(request, options = nil)
              #   Pass arguments to `resolve_service` via a request object, either of type
              #   {::Google::Cloud::ServiceDirectory::V1::ResolveServiceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::ServiceDirectory::V1::ResolveServiceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload resolve_service(name: nil, max_endpoints: nil, endpoint_filter: nil)
              #   Pass arguments to `resolve_service` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the service to resolve.
              #   @param max_endpoints [::Integer]
              #     Optional. The maximum number of endpoints to return. Defaults to 25.
              #     Maximum is 100. If a value less than one is specified, the Default is used.
              #     If a value greater than the Maximum is specified, the Maximum is used.
              #   @param endpoint_filter [::String]
              #     Optional. The filter applied to the endpoints of the resolved service.
              #
              #     General `filter` string syntax:
              #     `<field> <operator> <value> (<logical connector>)`
              #
              #     *   `<field>` can be `name`, `address`, `port`, or `annotations.<key>` for
              #         map field
              #     *   `<operator>` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:`
              #         means `HAS`, and is roughly the same as `=`
              #     *   `<value>` must be the same data type as field
              #     *   `<logical connector>` can be `AND`, `OR`, `NOT`
              #
              #     Examples of valid filters:
              #
              #     *   `annotations.owner` returns endpoints that have a annotation with the
              #         key `owner`, this is the same as `annotations:owner`
              #     *   `annotations.protocol=gRPC` returns endpoints that have key/value
              #         `protocol=gRPC`
              #     *   `address=192.108.1.105` returns endpoints that have this address
              #     *   `port>8080` returns endpoints that have port number larger than 8080
              #     *
              #     `name>projects/my-project/locations/us-east1/namespaces/my-namespace/services/my-service/endpoints/endpoint-c`
              #         returns endpoints that have name that is alphabetically later than the
              #         string, so "endpoint-e" is returned but "endpoint-a" is not
              #     *
              #     `name=projects/my-project/locations/us-central1/namespaces/my-namespace/services/my-service/endpoints/ep-1`
              #          returns the endpoint that has an endpoint_id equal to `ep-1`
              #     *   `annotations.owner!=sd AND annotations.foo=bar` returns endpoints that
              #         have `owner` in annotation key but value is not `sd` AND have
              #         key/value `foo=bar`
              #     *   `doesnotexist.foo=bar` returns an empty list. Note that endpoint
              #         doesn't have a field called "doesnotexist". Since the filter does not
              #         match any endpoint, it returns no results
              #
              #     For more information about filtering, see
              #     [API Filtering](https://aip.dev/160).
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::ServiceDirectory::V1::ResolveServiceResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::ServiceDirectory::V1::ResolveServiceResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def resolve_service request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ServiceDirectory::V1::ResolveServiceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.resolve_service.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::ServiceDirectory::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.resolve_service.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.resolve_service.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @lookup_service_stub.resolve_service request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the LookupService REST API.
              #
              # This class represents the configuration for LookupService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # resolve_service to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.resolve_service.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::ServiceDirectory::V1::LookupService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.resolve_service.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"servicedirectory.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
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
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
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

                DEFAULT_ENDPOINT = "servicedirectory.googleapis.com"

                config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                # Overrides for http bindings for the RPCs of this service
                # are only used when this service is used as mixin, and only
                # by the host service.
                # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
                config_attr :bindings_override, {}, ::Hash, nil

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
                # Configuration RPC class for the LookupService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
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
                  # RPC-specific configuration for `resolve_service`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :resolve_service

                  # @private
                  def initialize parent_rpcs = nil
                    resolve_service_config = parent_rpcs.resolve_service if parent_rpcs.respond_to? :resolve_service
                    @resolve_service = ::Gapic::Config::Method.new resolve_service_config

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
end
