# NutanixVolumes::VolumesV40ConfigTargetParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **num_virtual_targets** | **Integer** | Number of virtual targets generated for the iSCSI target. This field is immutable. | [optional][readonly] |
| **iscsi_target_name** | **String** | Name of the iSCSI target that the iSCSI client is connected to. This is a read-only field. | [optional][readonly] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigTargetParam.new(
  num_virtual_targets: 32,
  iscsi_target_name: null
)
```

