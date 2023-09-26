# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/task.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/run/v2/condition_pb'
require 'google/cloud/run/v2/k8s.min_pb'
require 'google/cloud/run/v2/vendor_settings_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n\x1egoogle/cloud/run/v2/task.proto\x12\x13google.cloud.run.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/run/v2/condition.proto\x1a!google/cloud/run/v2/k8s.min.proto\x1a)google/cloud/run/v2/vendor_settings.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"?\n\x0eGetTaskRequest\x12-\n\x04name\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\n\x17run.googleapis.com/Task\"\x80\x01\n\x10ListTasksRequest\x12/\n\x06parent\x18\x01 \x01(\tB\x1f\xe0\x41\x02\xfa\x41\x19\x12\x17run.googleapis.com/Task\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x0cshow_deleted\x18\x04 \x01(\x08\"V\n\x11ListTasksResponse\x12(\n\x05tasks\x18\x01 \x03(\x0b\x32\x19.google.cloud.run.v2.Task\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xb8\x0c\n\x04Task\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\ngeneration\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\x12:\n\x06labels\x18\x04 \x03(\x0b\x32%.google.cloud.run.v2.Task.LabelsEntryB\x03\xe0\x41\x03\x12\x44\n\x0b\x61nnotations\x18\x05 \x03(\x0b\x32*.google.cloud.run.v2.Task.AnnotationsEntryB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x37\n\x0escheduled_time\x18\" \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x1b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x38\n\x0f\x63ompletion_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12+\n\x03job\x18\x0c \x01(\tB\x1e\xe0\x41\x03\xfa\x41\x18\n\x16run.googleapis.com/Job\x12\x37\n\texecution\x18\r \x01(\tB$\xe0\x41\x03\xfa\x41\x1e\n\x1crun.googleapis.com/Execution\x12\x32\n\ncontainers\x18\x0e \x03(\x0b\x32\x1e.google.cloud.run.v2.Container\x12,\n\x07volumes\x18\x0f \x03(\x0b\x32\x1b.google.cloud.run.v2.Volume\x12\x13\n\x0bmax_retries\x18\x10 \x01(\x05\x12*\n\x07timeout\x18\x11 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x17\n\x0fservice_account\x18\x12 \x01(\t\x12H\n\x15\x65xecution_environment\x18\x14 \x01(\x0e\x32).google.cloud.run.v2.ExecutionEnvironment\x12\x18\n\x0breconciling\x18\x15 \x01(\x08\x42\x03\xe0\x41\x03\x12\x37\n\nconditions\x18\x16 \x03(\x0b\x32\x1e.google.cloud.run.v2.ConditionB\x03\xe0\x41\x03\x12 \n\x13observed_generation\x18\x17 \x01(\x03\x42\x03\xe0\x41\x03\x12\x12\n\x05index\x18\x18 \x01(\x05\x42\x03\xe0\x41\x03\x12\x14\n\x07retried\x18\x19 \x01(\x05\x42\x03\xe0\x41\x03\x12H\n\x13last_attempt_result\x18\x1a \x01(\x0b\x32&.google.cloud.run.v2.TaskAttemptResultB\x03\xe0\x41\x03\x12\x41\n\x0e\x65ncryption_key\x18\x1c \x01(\tB)\xe0\x41\x03\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\x37\n\nvpc_access\x18\x1d \x01(\x0b\x32\x1e.google.cloud.run.v2.VpcAccessB\x03\xe0\x41\x03\x12\x14\n\x07log_uri\x18  \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzs\x18! \x01(\x08\x42\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x63 \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:w\xea\x41t\n\x17run.googleapis.com/Task\x12Vprojects/{project}/locations/{location}/jobs/{job}/executions/{execution}/tasks/{task}R\x01\x01\"T\n\x11TaskAttemptResult\x12\'\n\x06status\x18\x01 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12\x16\n\texit_code\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x32\x96\x03\n\x05Tasks\x12\x97\x01\n\x07GetTask\x12#.google.cloud.run.v2.GetTaskRequest\x1a\x19.google.cloud.run.v2.Task\"L\x82\xd3\xe4\x93\x02?\x12=/v2/{name=projects/*/locations/*/jobs/*/executions/*/tasks/*}\xda\x41\x04name\x12\xaa\x01\n\tListTasks\x12%.google.cloud.run.v2.ListTasksRequest\x1a&.google.cloud.run.v2.ListTasksResponse\"N\x82\xd3\xe4\x93\x02?\x12=/v2/{parent=projects/*/locations/*/jobs/*/executions/*}/tasks\xda\x41\x06parent\x1a\x46\xca\x41\x12run.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBQ\n\x17\x63om.google.cloud.run.v2B\tTaskProtoP\x01Z)cloud.google.com/go/run/apiv2/runpb;runpbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.run.v2.Container", "google/cloud/run/v2/k8s.min.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.cloud.run.v2.Condition", "google/cloud/run/v2/condition.proto"],
    ["google.cloud.run.v2.VpcAccess", "google/cloud/run/v2/vendor_settings.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Run
      module V2
        GetTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GetTaskRequest").msgclass
        ListTasksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListTasksRequest").msgclass
        ListTasksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListTasksResponse").msgclass
        Task = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Task").msgclass
        TaskAttemptResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.TaskAttemptResult").msgclass
      end
    end
  end
end
