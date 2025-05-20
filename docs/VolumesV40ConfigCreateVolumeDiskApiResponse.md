# NutanixVolumes::VolumesV40ConfigCreateVolumeDiskApiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**VolumesV40ConfigUpdateIscsiClientApiResponseData**](VolumesV40ConfigUpdateIscsiClientApiResponseData.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigCreateVolumeDiskApiResponse.new(
  metadata: null,
  data: null
)
```

