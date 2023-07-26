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

require "helper"
require "google/cloud/ai_platform"
require "gapic/common"
require "gapic/grpc"

class Google::Cloud::AIPlatform::ClientConstructionMinitest < Minitest::Test
  def test_dataset_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.dataset_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::DatasetService::Client, client
    end
  end

  def test_endpoint_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.endpoint_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::EndpointService::Client, client
    end
  end

  def test_featurestore_online_serving_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.featurestore_online_serving_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client, client
    end
  end

  def test_featurestore_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.featurestore_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::FeaturestoreService::Client, client
    end
  end

  def test_index_endpoint_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.index_endpoint_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::IndexEndpointService::Client, client
    end
  end

  def test_index_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.index_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::IndexService::Client, client
    end
  end

  def test_job_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.job_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::JobService::Client, client
    end
  end

  def test_match_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.match_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::MatchService::Client, client
    end
  end

  def test_metadata_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.metadata_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::MetadataService::Client, client
    end
  end

  def test_migration_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.migration_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::MigrationService::Client, client
    end
  end

  def test_model_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.model_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::ModelService::Client, client
    end
  end

  def test_model_garden_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.model_garden_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::ModelGardenService::Client, client
    end
  end

  def test_pipeline_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.pipeline_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::PipelineService::Client, client
    end
  end

  def test_prediction_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.prediction_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::PredictionService::Client, client
    end
  end

  def test_schedule_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.schedule_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::ScheduleService::Client, client
    end
  end

  def test_specialist_pool_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.specialist_pool_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::SpecialistPoolService::Client, client
    end
  end

  def test_tensorboard_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.tensorboard_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::TensorboardService::Client, client
    end
  end

  def test_vizier_service_grpc
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::AIPlatform.vizier_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::AIPlatform::V1::VizierService::Client, client
    end
  end
end
