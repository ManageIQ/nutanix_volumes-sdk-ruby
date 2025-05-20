# NutanixVolumes::VolumesV40ConfigVolumeGroupMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_reference** | **String** | Owner reference information of a Volume Group. This is read-only and is automatically populated using the authentication context provided during the VG creation. | [optional][readonly] |
| **category_ids** | **Array&lt;String&gt;** | The list of categories attached to a Volume Group. This is read-only. Use the associate/disassociate-category APIs to update this list. | [optional][readonly] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigVolumeGroupMetadata.new(
  owner_reference: null,
  category_ids: null
)
```

