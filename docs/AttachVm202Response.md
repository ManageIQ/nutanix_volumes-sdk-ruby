# NutanixVolumes::AttachVm202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**PrismV40ConfigTaskReference**](PrismV40ConfigTaskReference.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::AttachVm202Response.new(
  metadata: null,
  data: null
)
```

