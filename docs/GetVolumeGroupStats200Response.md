# NutanixVolumes::GetVolumeGroupStats200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**VolumesV40StatsVolumeGroupStats**](VolumesV40StatsVolumeGroupStats.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::GetVolumeGroupStats200Response.new(
  metadata: null,
  data: null
)
```

