# NutanixVolumes::ListVolumeGroups200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**Array&lt;VolumesV40ConfigVolumeGroup&gt;**](VolumesV40ConfigVolumeGroup.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::ListVolumeGroups200Response.new(
  metadata: null,
  data: null
)
```

