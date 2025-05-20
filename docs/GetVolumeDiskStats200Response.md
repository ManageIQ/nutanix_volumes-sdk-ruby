# NutanixVolumes::GetVolumeDiskStats200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**VolumesV40StatsVolumeDiskStats**](VolumesV40StatsVolumeDiskStats.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::GetVolumeDiskStats200Response.new(
  metadata: null,
  data: null
)
```

