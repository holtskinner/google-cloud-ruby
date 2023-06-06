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
require "google/iam/v2/policy_pb"
require "google/iam/v2/policies/rest/service_stub"

module Google
  module Iam
    module V2
      module Policies
        module Rest
          ##
          # REST client for the Policies service.
          #
          # An interface for managing Identity and Access Management (IAM) policies.
          #
          class Client
            # @private
            attr_reader :policies_stub

            ##
            # Configure the Policies Client class.
            #
            # See {::Google::Iam::V2::Policies::Rest::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all Policies clients
            #   ::Google::Iam::V2::Policies::Rest::Client.configure do |config|
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
                namespace = ["Google", "Iam", "V2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.list_policies.timeout = 60.0
                default_config.rpcs.list_policies.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.get_policy.timeout = 60.0
                default_config.rpcs.get_policy.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.create_policy.timeout = 60.0
                default_config.rpcs.create_policy.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.update_policy.timeout = 60.0
                default_config.rpcs.update_policy.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.delete_policy.timeout = 60.0
                default_config.rpcs.delete_policy.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Policies Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Iam::V2::Policies::Rest::Client::Configuration}
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
            # Create a new Policies REST client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Iam::V2::Policies::Rest::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Iam::V2::Policies::Rest::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Policies client.
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

              @operations_client = ::Google::Iam::V2::Policies::Rest::Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @policies_stub = ::Google::Iam::V2::Policies::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Iam::V2::Policies::Rest::Operations]
            #
            attr_reader :operations_client

            # Service calls

            ##
            # Retrieves the policies of the specified kind that are attached to a
            # resource.
            #
            # The response lists only policy metadata. In particular, policy rules are
            # omitted.
            #
            # @overload list_policies(request, options = nil)
            #   Pass arguments to `list_policies` via a request object, either of type
            #   {::Google::Iam::V2::ListPoliciesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V2::ListPoliciesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @overload list_policies(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_policies` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The resource that the policy is attached to, along with the kind of policy
            #     to list. Format:
            #     `policies/{attachment_point}/denypolicies`
            #
            #
            #     The attachment point is identified by its URL-encoded full resource name,
            #     which means that the forward-slash character, `/`, must be written as
            #     `%2F`. For example,
            #     `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies`.
            #
            #     For organizations and folders, use the numeric ID in the full resource
            #     name. For projects, you can use the alphanumeric or the numeric ID.
            #   @param page_size [::Integer]
            #     The maximum number of policies to return. IAM ignores this value and uses
            #     the value 1000.
            #   @param page_token [::String]
            #     A page token received in a {::Google::Iam::V2::ListPoliciesResponse ListPoliciesResponse}. Provide this token to
            #     retrieve the next page.
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Iam::V2::Policy>]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Gapic::Rest::PagedEnumerable<::Google::Iam::V2::Policy>]
            #
            # @raise [::Google::Cloud::Error] if the REST call is aborted.
            def list_policies request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V2::ListPoliciesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              call_metadata = @config.rpcs.list_policies.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Iam::V2::VERSION,
                transports_version_send: [:rest]

              call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.list_policies.timeout,
                                     metadata:     call_metadata,
                                     retry_policy: @config.rpcs.list_policies.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @policies_stub.list_policies request, options do |result, operation|
                result = ::Gapic::Rest::PagedEnumerable.new @policies_stub, :list_policies, "policies", request, result, options
                yield result, operation if block_given?
                return result
              end
            rescue ::Gapic::Rest::Error => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets a policy.
            #
            # @overload get_policy(request, options = nil)
            #   Pass arguments to `get_policy` via a request object, either of type
            #   {::Google::Iam::V2::GetPolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V2::GetPolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @overload get_policy(name: nil)
            #   Pass arguments to `get_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The resource name of the policy to retrieve. Format:
            #     `policies/{attachment_point}/denypolicies/{policy_id}`
            #
            #
            #     Use the URL-encoded full resource name, which means that the forward-slash
            #     character, `/`, must be written as `%2F`. For example,
            #     `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-policy`.
            #
            #     For organizations and folders, use the numeric ID in the full resource
            #     name. For projects, you can use the alphanumeric or the numeric ID.
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Google::Iam::V2::Policy]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Google::Iam::V2::Policy]
            #
            # @raise [::Google::Cloud::Error] if the REST call is aborted.
            def get_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V2::GetPolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              call_metadata = @config.rpcs.get_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Iam::V2::VERSION,
                transports_version_send: [:rest]

              call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.get_policy.timeout,
                                     metadata:     call_metadata,
                                     retry_policy: @config.rpcs.get_policy.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @policies_stub.get_policy request, options do |result, operation|
                yield result, operation if block_given?
                return result
              end
            rescue ::Gapic::Rest::Error => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Creates a policy.
            #
            # @overload create_policy(request, options = nil)
            #   Pass arguments to `create_policy` via a request object, either of type
            #   {::Google::Iam::V2::CreatePolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V2::CreatePolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @overload create_policy(parent: nil, policy: nil, policy_id: nil)
            #   Pass arguments to `create_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The resource that the policy is attached to, along with the kind of policy
            #     to create. Format: `policies/{attachment_point}/denypolicies`
            #
            #
            #     The attachment point is identified by its URL-encoded full resource name,
            #     which means that the forward-slash character, `/`, must be written as
            #     `%2F`. For example,
            #     `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies`.
            #
            #     For organizations and folders, use the numeric ID in the full resource
            #     name. For projects, you can use the alphanumeric or the numeric ID.
            #   @param policy [::Google::Iam::V2::Policy, ::Hash]
            #     Required. The policy to create.
            #   @param policy_id [::String]
            #     The ID to use for this policy, which will become the final component of
            #     the policy's resource name. The ID must contain 3 to 63 characters. It can
            #     contain lowercase letters and numbers, as well as dashes (`-`) and periods
            #     (`.`). The first character must be a lowercase letter.
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Gapic::Operation]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the REST call is aborted.
            def create_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V2::CreatePolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              call_metadata = @config.rpcs.create_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Iam::V2::VERSION,
                transports_version_send: [:rest]

              call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.create_policy.timeout,
                                     metadata:     call_metadata,
                                     retry_policy: @config.rpcs.create_policy.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @policies_stub.create_policy request, options do |result, operation|
                result = ::Gapic::Operation.new result, @operations_client, options: options
                yield result, operation if block_given?
                return result
              end
            rescue ::Gapic::Rest::Error => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates the specified policy.
            #
            # You can update only the rules and the display name for the policy.
            #
            # To update a policy, you should use a read-modify-write loop:
            #
            # 1. Use {::Google::Iam::V2::Policies::Rest::Client#get_policy GetPolicy} to read the current version of the policy.
            # 2. Modify the policy as needed.
            # 3. Use `UpdatePolicy` to write the updated policy.
            #
            # This pattern helps prevent conflicts between concurrent updates.
            #
            # @overload update_policy(request, options = nil)
            #   Pass arguments to `update_policy` via a request object, either of type
            #   {::Google::Iam::V2::UpdatePolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V2::UpdatePolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @overload update_policy(policy: nil)
            #   Pass arguments to `update_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param policy [::Google::Iam::V2::Policy, ::Hash]
            #     Required. The policy to update.
            #
            #     To prevent conflicting updates, the `etag` value must match the value that
            #     is stored in IAM. If the `etag` values do not match, the request fails with
            #     a `409` error code and `ABORTED` status.
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Gapic::Operation]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the REST call is aborted.
            def update_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V2::UpdatePolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              call_metadata = @config.rpcs.update_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Iam::V2::VERSION,
                transports_version_send: [:rest]

              call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.update_policy.timeout,
                                     metadata:     call_metadata,
                                     retry_policy: @config.rpcs.update_policy.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @policies_stub.update_policy request, options do |result, operation|
                result = ::Gapic::Operation.new result, @operations_client, options: options
                yield result, operation if block_given?
                return result
              end
            rescue ::Gapic::Rest::Error => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Deletes a policy. This action is permanent.
            #
            # @overload delete_policy(request, options = nil)
            #   Pass arguments to `delete_policy` via a request object, either of type
            #   {::Google::Iam::V2::DeletePolicyRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Iam::V2::DeletePolicyRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @overload delete_policy(name: nil, etag: nil)
            #   Pass arguments to `delete_policy` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The resource name of the policy to delete. Format:
            #     `policies/{attachment_point}/denypolicies/{policy_id}`
            #
            #
            #     Use the URL-encoded full resource name, which means that the forward-slash
            #     character, `/`, must be written as `%2F`. For example,
            #     `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-policy`.
            #
            #     For organizations and folders, use the numeric ID in the full resource
            #     name. For projects, you can use the alphanumeric or the numeric ID.
            #   @param etag [::String]
            #     Optional. The expected `etag` of the policy to delete. If the value does not match
            #     the value that is stored in IAM, the request fails with a `409` error code
            #     and `ABORTED` status.
            #
            #     If you omit this field, the policy is deleted regardless of its current
            #     `etag`.
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Gapic::Operation]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the REST call is aborted.
            def delete_policy request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Iam::V2::DeletePolicyRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              call_metadata = @config.rpcs.delete_policy.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Iam::V2::VERSION,
                transports_version_send: [:rest]

              call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.delete_policy.timeout,
                                     metadata:     call_metadata,
                                     retry_policy: @config.rpcs.delete_policy.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @policies_stub.delete_policy request, options do |result, operation|
                result = ::Gapic::Operation.new result, @operations_client, options: options
                yield result, operation if block_given?
                return result
              end
            rescue ::Gapic::Rest::Error => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Policies REST API.
            #
            # This class represents the configuration for Policies REST,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Iam::V2::Policies::Rest::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_policies to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Iam::V2::Policies::Rest::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_policies.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Iam::V2::Policies::Rest::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_policies.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"iam.googleapis.com"`.
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

              DEFAULT_ENDPOINT = "iam.googleapis.com"

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
              # Configuration RPC class for the Policies API.
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
                # RPC-specific configuration for `list_policies`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_policies
                ##
                # RPC-specific configuration for `get_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_policy
                ##
                # RPC-specific configuration for `create_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_policy
                ##
                # RPC-specific configuration for `update_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_policy
                ##
                # RPC-specific configuration for `delete_policy`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_policy

                # @private
                def initialize parent_rpcs = nil
                  list_policies_config = parent_rpcs.list_policies if parent_rpcs.respond_to? :list_policies
                  @list_policies = ::Gapic::Config::Method.new list_policies_config
                  get_policy_config = parent_rpcs.get_policy if parent_rpcs.respond_to? :get_policy
                  @get_policy = ::Gapic::Config::Method.new get_policy_config
                  create_policy_config = parent_rpcs.create_policy if parent_rpcs.respond_to? :create_policy
                  @create_policy = ::Gapic::Config::Method.new create_policy_config
                  update_policy_config = parent_rpcs.update_policy if parent_rpcs.respond_to? :update_policy
                  @update_policy = ::Gapic::Config::Method.new update_policy_config
                  delete_policy_config = parent_rpcs.delete_policy if parent_rpcs.respond_to? :delete_policy
                  @delete_policy = ::Gapic::Config::Method.new delete_policy_config

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
