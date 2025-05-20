# NutanixVolumes::VolumesV40ConfigCategoryEntityReferences

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | [**Array&lt;CommonV10ConfigEntityReference&gt;**](CommonV10ConfigEntityReference.md) | The category to be associated/disassociated with the Volume Group. This is a mandatory field. | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigCategoryEntityReferences.new(
  categories: null
)
```

