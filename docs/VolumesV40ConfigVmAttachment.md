# NutanixVolumes::VolumesV40ConfigVmAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of the VM. |  |
| **index** | **Integer** | The index on the SCSI bus to attach the VM to the Volume Group. This is an optional field. | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigVmAttachment.new(
  ext_id: 1eafb1ad-21a1-4c3d-81da-1a99d3c05c72,
  index: 26
)
```

