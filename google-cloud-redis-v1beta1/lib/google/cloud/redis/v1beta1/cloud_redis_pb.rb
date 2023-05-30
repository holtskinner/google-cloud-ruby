# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/redis/v1beta1/cloud_redis.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/dayofweek_pb'
require 'google/type/timeofday_pb'


descriptor_data = "\n,google/cloud/redis/v1beta1/cloud_redis.proto\x12\x1agoogle.cloud.redis.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1bgoogle/type/dayofweek.proto\x1a\x1bgoogle/type/timeofday.proto\".\n\x08NodeInfo\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04zone\x18\x02 \x01(\tB\x03\xe0\x41\x03\"\xa5\x11\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12@\n\x06labels\x18\x03 \x03(\x0b\x32\x30.google.cloud.redis.v1beta1.Instance.LabelsEntry\x12\x18\n\x0blocation_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12$\n\x17\x61lternative_location_id\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rredis_version\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12\x1e\n\x11reserved_ip_range\x18\t \x01(\tB\x03\xe0\x41\x01\x12\x1f\n\x12secondary_ip_range\x18\x1e \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04host\x18\n \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04port\x18\x0b \x01(\x05\x42\x03\xe0\x41\x03\x12 \n\x13\x63urrent_location_id\x18\x0c \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\r \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12>\n\x05state\x18\x0e \x01(\x0e\x32*.google.cloud.redis.v1beta1.Instance.StateB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x0f \x01(\tB\x03\xe0\x41\x03\x12R\n\rredis_configs\x18\x10 \x03(\x0b\x32\x36.google.cloud.redis.v1beta1.Instance.RedisConfigsEntryB\x03\xe0\x41\x01\x12<\n\x04tier\x18\x11 \x01(\x0e\x32).google.cloud.redis.v1beta1.Instance.TierB\x03\xe0\x41\x02\x12\x1b\n\x0ememory_size_gb\x18\x12 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1f\n\x12\x61uthorized_network\x18\x14 \x01(\tB\x03\xe0\x41\x01\x12%\n\x18persistence_iam_identity\x18\x15 \x01(\tB\x03\xe0\x41\x03\x12K\n\x0c\x63onnect_mode\x18\x16 \x01(\x0e\x32\x30.google.cloud.redis.v1beta1.Instance.ConnectModeB\x03\xe0\x41\x01\x12\x19\n\x0c\x61uth_enabled\x18\x17 \x01(\x08\x42\x03\xe0\x41\x01\x12H\n\x0fserver_ca_certs\x18\x19 \x03(\x0b\x32*.google.cloud.redis.v1beta1.TlsCertificateB\x03\xe0\x41\x03\x12`\n\x17transit_encryption_mode\x18\x1a \x01(\x0e\x32:.google.cloud.redis.v1beta1.Instance.TransitEncryptionModeB\x03\xe0\x41\x01\x12N\n\x12maintenance_policy\x18\x1b \x01(\x0b\x32-.google.cloud.redis.v1beta1.MaintenancePolicyB\x03\xe0\x41\x01\x12R\n\x14maintenance_schedule\x18\x1c \x01(\x0b\x32/.google.cloud.redis.v1beta1.MaintenanceScheduleB\x03\xe0\x41\x03\x12\x1a\n\rreplica_count\x18\x1f \x01(\x05\x42\x03\xe0\x41\x01\x12\x38\n\x05nodes\x18  \x03(\x0b\x32$.google.cloud.redis.v1beta1.NodeInfoB\x03\xe0\x41\x03\x12\x1a\n\rread_endpoint\x18! \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\x12read_endpoint_port\x18\" \x01(\x05\x42\x03\xe0\x41\x03\x12V\n\x12read_replicas_mode\x18# \x01(\x0e\x32\x35.google.cloud.redis.v1beta1.Instance.ReadReplicasModeB\x03\xe0\x41\x01\x12N\n\x12persistence_config\x18% \x01(\x0b\x32-.google.cloud.redis.v1beta1.PersistenceConfigB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x33\n\x11RedisConfigsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x94\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02\x12\x0c\n\x08UPDATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\r\n\tREPAIRING\x10\x05\x12\x0f\n\x0bMAINTENANCE\x10\x06\x12\r\n\tIMPORTING\x10\x08\x12\x10\n\x0c\x46\x41ILING_OVER\x10\n\"8\n\x04Tier\x12\x14\n\x10TIER_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41SIC\x10\x01\x12\x0f\n\x0bSTANDARD_HA\x10\x03\"[\n\x0b\x43onnectMode\x12\x1c\n\x18\x43ONNECT_MODE_UNSPECIFIED\x10\x00\x12\x12\n\x0e\x44IRECT_PEERING\x10\x01\x12\x1a\n\x16PRIVATE_SERVICE_ACCESS\x10\x02\"i\n\x15TransitEncryptionMode\x12\'\n#TRANSIT_ENCRYPTION_MODE_UNSPECIFIED\x10\x00\x12\x19\n\x15SERVER_AUTHENTICATION\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\"m\n\x10ReadReplicasMode\x12\"\n\x1eREAD_REPLICAS_MODE_UNSPECIFIED\x10\x00\x12\x1a\n\x16READ_REPLICAS_DISABLED\x10\x01\x12\x19\n\x15READ_REPLICAS_ENABLED\x10\x02:`\xea\x41]\n\x1dredis.googleapis.com/Instance\x12<projects/{project}/locations/{location}/instances/{instance}\"\x99\x04\n\x11PersistenceConfig\x12\\\n\x10persistence_mode\x18\x01 \x01(\x0e\x32=.google.cloud.redis.v1beta1.PersistenceConfig.PersistenceModeB\x03\xe0\x41\x01\x12^\n\x13rdb_snapshot_period\x18\x02 \x01(\x0e\x32<.google.cloud.redis.v1beta1.PersistenceConfig.SnapshotPeriodB\x03\xe0\x41\x01\x12?\n\x16rdb_next_snapshot_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12@\n\x17rdb_snapshot_start_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"J\n\x0fPersistenceMode\x12 \n\x1cPERSISTENCE_MODE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\x07\n\x03RDB\x10\x02\"w\n\x0eSnapshotPeriod\x12\x1f\n\x1bSNAPSHOT_PERIOD_UNSPECIFIED\x10\x00\x12\x0c\n\x08ONE_HOUR\x10\x03\x12\r\n\tSIX_HOURS\x10\x04\x12\x10\n\x0cTWELVE_HOURS\x10\x05\x12\x15\n\x11TWENTY_FOUR_HOURS\x10\x06\"\xe2\x02\n\x1cRescheduleMaintenanceRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dredis.googleapis.com/Instance\x12\x65\n\x0freschedule_type\x18\x02 \x01(\x0e\x32G.google.cloud.redis.v1beta1.RescheduleMaintenanceRequest.RescheduleTypeB\x03\xe0\x41\x02\x12\x36\n\rschedule_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"n\n\x0eRescheduleType\x12\x1f\n\x1bRESCHEDULE_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tIMMEDIATE\x10\x01\x12\x19\n\x15NEXT_AVAILABLE_WINDOW\x10\x02\x12\x11\n\rSPECIFIC_TIME\x10\x03\"\xf6\x01\n\x11MaintenancePolicy\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12[\n\x19weekly_maintenance_window\x18\x04 \x03(\x0b\x32\x33.google.cloud.redis.v1beta1.WeeklyMaintenanceWindowB\x03\xe0\x41\x01\"\xa6\x01\n\x17WeeklyMaintenanceWindow\x12(\n\x03\x64\x61y\x18\x01 \x01(\x0e\x32\x16.google.type.DayOfWeekB\x03\xe0\x41\x02\x12/\n\nstart_time\x18\x02 \x01(\x0b\x32\x16.google.type.TimeOfDayB\x03\xe0\x41\x02\x12\x30\n\x08\x64uration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x03\"\xda\x01\n\x13MaintenanceSchedule\x12\x33\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x1a\n\x0e\x63\x61n_reschedule\x18\x03 \x01(\x08\x42\x02\x18\x01\x12?\n\x16schedule_deadline_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\"x\n\x14ListInstancesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"~\n\x15ListInstancesResponse\x12\x37\n\tinstances\x18\x01 \x03(\x0b\x32$.google.cloud.redis.v1beta1.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"I\n\x12GetInstanceRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dredis.googleapis.com/Instance\"S\n\x1cGetInstanceAuthStringRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dredis.googleapis.com/Instance\")\n\x12InstanceAuthString\x12\x13\n\x0b\x61uth_string\x18\x01 \x01(\t\"\xa9\x01\n\x15\x43reateInstanceRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12;\n\x08instance\x18\x03 \x01(\x0b\x32$.google.cloud.redis.v1beta1.InstanceB\x03\xe0\x41\x02\"\x8a\x01\n\x15UpdateInstanceRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12;\n\x08instance\x18\x02 \x01(\x0b\x32$.google.cloud.redis.v1beta1.InstanceB\x03\xe0\x41\x02\"i\n\x16UpgradeInstanceRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dredis.googleapis.com/Instance\x12\x1a\n\rredis_version\x18\x02 \x01(\tB\x03\xe0\x41\x02\"L\n\x15\x44\x65leteInstanceRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dredis.googleapis.com/Instance\"\x1d\n\tGcsSource\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\"T\n\x0bInputConfig\x12;\n\ngcs_source\x18\x01 \x01(\x0b\x32%.google.cloud.redis.v1beta1.GcsSourceH\x00\x42\x08\n\x06source\"n\n\x15ImportInstanceRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x42\n\x0cinput_config\x18\x03 \x01(\x0b\x32\'.google.cloud.redis.v1beta1.InputConfigB\x03\xe0\x41\x02\"\"\n\x0eGcsDestination\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\"d\n\x0cOutputConfig\x12\x45\n\x0fgcs_destination\x18\x01 \x01(\x0b\x32*.google.cloud.redis.v1beta1.GcsDestinationH\x00\x42\r\n\x0b\x64\x65stination\"p\n\x15\x45xportInstanceRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x44\n\routput_config\x18\x03 \x01(\x0b\x32(.google.cloud.redis.v1beta1.OutputConfigB\x03\xe0\x41\x02\"\xa1\x02\n\x17\x46\x61iloverInstanceRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1dredis.googleapis.com/Instance\x12i\n\x14\x64\x61ta_protection_mode\x18\x02 \x01(\x0e\x32\x46.google.cloud.redis.v1beta1.FailoverInstanceRequest.DataProtectionModeB\x03\xe0\x41\x01\"f\n\x12\x44\x61taProtectionMode\x12$\n DATA_PROTECTION_MODE_UNSPECIFIED\x10\x00\x12\x15\n\x11LIMITED_DATA_LOSS\x10\x01\x12\x13\n\x0f\x46ORCE_DATA_LOSS\x10\x02\"\xd3\x01\n\x10LocationMetadata\x12^\n\x0f\x61vailable_zones\x18\x01 \x03(\x0b\x32@.google.cloud.redis.v1beta1.LocationMetadata.AvailableZonesEntryB\x03\xe0\x41\x03\x1a_\n\x13\x41vailableZonesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x37\n\x05value\x18\x02 \x01(\x0b\x32(.google.cloud.redis.v1beta1.ZoneMetadata:\x02\x38\x01\"\x0e\n\x0cZoneMetadata\"\xbb\x01\n\x0eTlsCertificate\x12\x15\n\rserial_number\x18\x01 \x01(\t\x12\x0c\n\x04\x63\x65rt\x18\x02 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x10sha1_fingerprint\x18\x05 \x01(\t2\xa8\x15\n\nCloudRedis\x12\xb9\x01\n\rListInstances\x12\x30.google.cloud.redis.v1beta1.ListInstancesRequest\x1a\x31.google.cloud.redis.v1beta1.ListInstancesResponse\"C\x82\xd3\xe4\x93\x02\x34\x12\x32/v1beta1/{parent=projects/*/locations/*}/instances\xda\x41\x06parent\x12\xa6\x01\n\x0bGetInstance\x12..google.cloud.redis.v1beta1.GetInstanceRequest\x1a$.google.cloud.redis.v1beta1.Instance\"A\x82\xd3\xe4\x93\x02\x34\x12\x32/v1beta1/{name=projects/*/locations/*/instances/*}\xda\x41\x04name\x12\xcf\x01\n\x15GetInstanceAuthString\x12\x38.google.cloud.redis.v1beta1.GetInstanceAuthStringRequest\x1a..google.cloud.redis.v1beta1.InstanceAuthString\"L\x82\xd3\xe4\x93\x02?\x12=/v1beta1/{name=projects/*/locations/*/instances/*}/authString\xda\x41\x04name\x12\x84\x02\n\x0e\x43reateInstance\x12\x31.google.cloud.redis.v1beta1.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x9f\x01\x82\xd3\xe4\x93\x02>\"2/v1beta1/{parent=projects/*/locations/*}/instances:\x08instance\xda\x41\x1bparent,instance_id,instance\xca\x41:\n#google.cloud.redis.v1beta1.Instance\x12\x13google.protobuf.Any\x12\x86\x02\n\x0eUpdateInstance\x12\x31.google.cloud.redis.v1beta1.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\xa1\x01\x82\xd3\xe4\x93\x02G2;/v1beta1/{instance.name=projects/*/locations/*/instances/*}:\x08instance\xda\x41\x14update_mask,instance\xca\x41:\n#google.cloud.redis.v1beta1.Instance\x12\x13google.protobuf.Any\x12\xfe\x01\n\x0fUpgradeInstance\x12\x32.google.cloud.redis.v1beta1.UpgradeInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x97\x01\x82\xd3\xe4\x93\x02?\":/v1beta1/{name=projects/*/locations/*/instances/*}:upgrade:\x01*\xda\x41\x12name,redis_version\xca\x41:\n#google.cloud.redis.v1beta1.Instance\x12\x13google.protobuf.Any\x12\xfa\x01\n\x0eImportInstance\x12\x31.google.cloud.redis.v1beta1.ImportInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x95\x01\x82\xd3\xe4\x93\x02>\"9/v1beta1/{name=projects/*/locations/*/instances/*}:import:\x01*\xda\x41\x11name,input_config\xca\x41:\n#google.cloud.redis.v1beta1.Instance\x12\x13google.protobuf.Any\x12\xfb\x01\n\x0e\x45xportInstance\x12\x31.google.cloud.redis.v1beta1.ExportInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x96\x01\x82\xd3\xe4\x93\x02>\"9/v1beta1/{name=projects/*/locations/*/instances/*}:export:\x01*\xda\x41\x12name,output_config\xca\x41:\n#google.cloud.redis.v1beta1.Instance\x12\x13google.protobuf.Any\x12\x88\x02\n\x10\x46\x61iloverInstance\x12\x33.google.cloud.redis.v1beta1.FailoverInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x9f\x01\x82\xd3\xe4\x93\x02@\";/v1beta1/{name=projects/*/locations/*/instances/*}:failover:\x01*\xda\x41\x19name,data_protection_mode\xca\x41:\n#google.cloud.redis.v1beta1.Instance\x12\x13google.protobuf.Any\x12\xd4\x01\n\x0e\x44\x65leteInstance\x12\x31.google.cloud.redis.v1beta1.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"p\x82\xd3\xe4\x93\x02\x34*2/v1beta1/{name=projects/*/locations/*/instances/*}\xda\x41\x04name\xca\x41,\n\x15google.protobuf.Empty\x12\x13google.protobuf.Any\x12\xaa\x02\n\x15RescheduleMaintenance\x12\x38.google.cloud.redis.v1beta1.RescheduleMaintenanceRequest\x1a\x1d.google.longrunning.Operation\"\xb7\x01\x82\xd3\xe4\x93\x02M\"H/v1beta1/{name=projects/*/locations/*/instances/*}:rescheduleMaintenance:\x01*\xda\x41$name, reschedule_type, schedule_time\xca\x41:\n#google.cloud.redis.v1beta1.Instance\x12\x13google.protobuf.Any\x1aH\xca\x41\x14redis.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBt\n\x1e\x63om.google.cloud.redis.v1beta1B\x1a\x43loudRedisServiceBetaProtoP\x01Z4cloud.google.com/go/redis/apiv1beta1/redispb;redispbb\x06proto3"

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
    ["google.type.TimeOfDay", "google/type/timeofday.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Redis
      module V1beta1
        NodeInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.NodeInfo").msgclass
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.Instance").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.Instance.State").enummodule
        Instance::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.Instance.Tier").enummodule
        Instance::ConnectMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.Instance.ConnectMode").enummodule
        Instance::TransitEncryptionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.Instance.TransitEncryptionMode").enummodule
        Instance::ReadReplicasMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.Instance.ReadReplicasMode").enummodule
        PersistenceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.PersistenceConfig").msgclass
        PersistenceConfig::PersistenceMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.PersistenceConfig.PersistenceMode").enummodule
        PersistenceConfig::SnapshotPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.PersistenceConfig.SnapshotPeriod").enummodule
        RescheduleMaintenanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.RescheduleMaintenanceRequest").msgclass
        RescheduleMaintenanceRequest::RescheduleType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.RescheduleMaintenanceRequest.RescheduleType").enummodule
        MaintenancePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.MaintenancePolicy").msgclass
        WeeklyMaintenanceWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.WeeklyMaintenanceWindow").msgclass
        MaintenanceSchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.MaintenanceSchedule").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.GetInstanceRequest").msgclass
        GetInstanceAuthStringRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.GetInstanceAuthStringRequest").msgclass
        InstanceAuthString = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.InstanceAuthString").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.CreateInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.UpdateInstanceRequest").msgclass
        UpgradeInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.UpgradeInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.DeleteInstanceRequest").msgclass
        GcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.GcsSource").msgclass
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.InputConfig").msgclass
        ImportInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.ImportInstanceRequest").msgclass
        GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.GcsDestination").msgclass
        OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.OutputConfig").msgclass
        ExportInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.ExportInstanceRequest").msgclass
        FailoverInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.FailoverInstanceRequest").msgclass
        FailoverInstanceRequest::DataProtectionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.FailoverInstanceRequest.DataProtectionMode").enummodule
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.LocationMetadata").msgclass
        ZoneMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.ZoneMetadata").msgclass
        TlsCertificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.v1beta1.TlsCertificate").msgclass
      end
    end
  end
end
