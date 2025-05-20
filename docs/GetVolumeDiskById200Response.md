# NutanixVolumes::GetVolumeDiskById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**VolumesV40ConfigVolumeDisk**](VolumesV40ConfigVolumeDisk.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::GetVolumeDiskById200Response.new(
  metadata: null,
  data: null
)
```

