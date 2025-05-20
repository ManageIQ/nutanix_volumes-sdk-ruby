# NutanixVolumes::RevertVolumeGroup4XXResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**VolumesV40ErrorErrorResponse**](VolumesV40ErrorErrorResponse.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::RevertVolumeGroup4XXResponse.new(
  metadata: null,
  data: null
)
```

