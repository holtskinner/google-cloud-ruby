# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/managedidentities/v1/managed_identities_service.proto for package 'Google.Cloud.ManagedIdentities.V1'
# Original file comments:
# Copyright 2019 Google LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

require 'grpc'
require 'google/cloud/managedidentities/v1/managed_identities_service_pb'

module Google
  module Cloud
    module ManagedIdentities
      module V1
        module ManagedIdentitiesService
          # ## API Overview
          #
          # The `managedidentites.googleapis.com` service implements the Google Cloud
          # Managed Identites API for identity services
          # (e.g. Microsoft Active Directory).
          #
          # The Managed Identities service provides methods to manage
          # (create/read/update/delete) domains, reset managed identities admin password,
          # add/remove domain controllers in GCP regions and add/remove VPC peering.
          #
          # ## Data Model
          #
          # The Managed Identities service exposes the following resources:
          #
          # * Locations as global, named as follows:
          #   `projects/{project_id}/locations/global`.
          #
          # * Domains, named as follows:
          #   `/projects/{project_id}/locations/global/domain/{domain_name}`.
          #
          # The `{domain_name}` refers to fully qualified domain name in the customer
          # project e.g. mydomain.myorganization.com, with the following restrictions:
          #
          #  * Must contain only lowercase letters, numbers, periods and hyphens.
          #  * Must start with a letter.
          #  * Must contain between 2-64 characters.
          #  * Must end with a number or a letter.
          #  * Must not start with period.
          #  * First segement length (mydomain form example above) shouldn't exceed
          #    15 chars.
          #  * The last segment cannot be fully numeric.
          #  * Must be unique within the customer project.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.managedidentities.v1.ManagedIdentitiesService'

            # Creates a Microsoft AD domain.
            rpc :CreateMicrosoftAdDomain, ::Google::Cloud::ManagedIdentities::V1::CreateMicrosoftAdDomainRequest, ::Google::Longrunning::Operation
            # Resets a domain's administrator password.
            rpc :ResetAdminPassword, ::Google::Cloud::ManagedIdentities::V1::ResetAdminPasswordRequest, ::Google::Cloud::ManagedIdentities::V1::ResetAdminPasswordResponse
            # Lists domains in a project.
            rpc :ListDomains, ::Google::Cloud::ManagedIdentities::V1::ListDomainsRequest, ::Google::Cloud::ManagedIdentities::V1::ListDomainsResponse
            # Gets information about a domain.
            rpc :GetDomain, ::Google::Cloud::ManagedIdentities::V1::GetDomainRequest, ::Google::Cloud::ManagedIdentities::V1::Domain
            # Updates the metadata and configuration of a domain.
            rpc :UpdateDomain, ::Google::Cloud::ManagedIdentities::V1::UpdateDomainRequest, ::Google::Longrunning::Operation
            # Deletes a domain.
            rpc :DeleteDomain, ::Google::Cloud::ManagedIdentities::V1::DeleteDomainRequest, ::Google::Longrunning::Operation
            # Adds an AD trust to a domain.
            rpc :AttachTrust, ::Google::Cloud::ManagedIdentities::V1::AttachTrustRequest, ::Google::Longrunning::Operation
            # Updates the DNS conditional forwarder.
            rpc :ReconfigureTrust, ::Google::Cloud::ManagedIdentities::V1::ReconfigureTrustRequest, ::Google::Longrunning::Operation
            # Removes an AD trust.
            rpc :DetachTrust, ::Google::Cloud::ManagedIdentities::V1::DetachTrustRequest, ::Google::Longrunning::Operation
            # Validates a trust state, that the target domain is reachable, and that the
            # target domain is able to accept incoming trust requests.
            rpc :ValidateTrust, ::Google::Cloud::ManagedIdentities::V1::ValidateTrustRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
