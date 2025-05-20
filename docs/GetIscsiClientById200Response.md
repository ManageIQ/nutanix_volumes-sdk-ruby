# NutanixVolumes::GetIscsiClientById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**VolumesV40ConfigIscsiClient**](VolumesV40ConfigIscsiClient.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::GetIscsiClientById200Response.new(
  metadata: null,
  data: null
)
```

