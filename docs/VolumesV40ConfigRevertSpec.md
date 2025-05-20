# NutanixVolumes::VolumesV40ConfigRevertSpec

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_recovery_point_ext_id** | **String** | The external identifier of the Volume Group recovery point. This is a mandatory field. |  |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigRevertSpec.new(
  volume_group_recovery_point_ext_id: f0a47be2-aef7-4c0f-97f4-25b5e512a360
)
```

