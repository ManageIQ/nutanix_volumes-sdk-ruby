# NutanixVolumes::VolumesV40StatsVolumeDiskStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | A globally unique identifier that represents the tenant that owns this entity. The system automatically assigns it, and it and is immutable from an API consumer perspective (some use cases may cause this Id to change - For instance, a use case may require the transfer of ownership of the entity, but these cases are handled automatically on the server).  | [optional][readonly] |
| **ext_id** | **String** | A globally unique identifier of an instance that is suitable for external consumption.  | [optional][readonly] |
| **links** | [**Array&lt;CommonV10ResponseApiLink&gt;**](CommonV10ResponseApiLink.md) | A HATEOAS style link for the response.  Each link contains a user-friendly name identifying the link and an address for retrieving the particular resource.  | [optional][readonly] |
| **volume_disk_ext_id** | **String** | Uuid of the Volume Disk. | [optional] |
| **controller_user_bytes** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller user bytes. | [optional][readonly] |
| **controller_num_iops** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller I/O rate measured in iops. | [optional][readonly] |
| **controller_num_read_iops** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller read I/O measured in iops. | [optional][readonly] |
| **controller_num_write_iops** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller write I/O measured in iops. | [optional][readonly] |
| **controller_io_bandwidth_k_bps** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller I/O bandwidth measured in Kbps. | [optional][readonly] |
| **controller_read_io_bandwidth_k_bps** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller read I/O bandwidth measured in Kbps. | [optional][readonly] |
| **controller_write_io_bandwidth_k_bps** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller write I/O bandwidth measured in Kbps. | [optional][readonly] |
| **controller_avg_io_latency_usecs** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller average I/O latency measured in microseconds. | [optional][readonly] |
| **controller_avg_read_io_latency_usecs** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller average read I/O latency measured in microseconds. | [optional][readonly] |
| **controller_avg_write_io_latency_usecs** | [**Array&lt;VolumesV40StatsTimeValuePair&gt;**](VolumesV40StatsTimeValuePair.md) | Controller average write I/O latency measured in microseconds. | [optional][readonly] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40StatsVolumeDiskStats.new(
  tenant_id: d92bfbe7-1b58-4493-ba79-3cf2a204bdca,
  ext_id: d4e34a80-abc5-46ca-8fcd-af3f00f2930a,
  links: null,
  volume_disk_ext_id: 65fc7d80-f563-4929-97d6-860ba58edf37,
  controller_user_bytes: null,
  controller_num_iops: null,
  controller_num_read_iops: null,
  controller_num_write_iops: null,
  controller_io_bandwidth_k_bps: null,
  controller_read_io_bandwidth_k_bps: null,
  controller_write_io_bandwidth_k_bps: null,
  controller_avg_io_latency_usecs: null,
  controller_avg_read_io_latency_usecs: null,
  controller_avg_write_io_latency_usecs: null
)
```

