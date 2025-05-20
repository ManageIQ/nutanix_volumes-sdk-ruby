# NutanixVolumes::ListVolumeDisksByVolumeGroupId200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**Array&lt;VolumesV40ConfigVolumeDisk&gt;**](VolumesV40ConfigVolumeDisk.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::ListVolumeDisksByVolumeGroupId200Response.new(
  metadata: null,
  data: null
)
```

