# NutanixVolumes::DetachVm202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**PrismV40ConfigTaskReference**](PrismV40ConfigTaskReference.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::DetachVm202Response.new(
  metadata: null,
  data: null
)
```

