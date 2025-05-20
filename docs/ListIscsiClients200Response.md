# NutanixVolumes::ListIscsiClients200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**Array&lt;VolumesV40ConfigIscsiClient&gt;**](VolumesV40ConfigIscsiClient.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::ListIscsiClients200Response.new(
  metadata: null,
  data: null
)
```

