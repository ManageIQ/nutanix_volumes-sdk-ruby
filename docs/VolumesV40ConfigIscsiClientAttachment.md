# NutanixVolumes::VolumesV40ConfigIscsiClientAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of an iSCSI client. | [optional] |
| **cluster_reference** | **String** | The UUID of the cluster that will host the iSCSI client. This field is read-only. | [optional][readonly] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigIscsiClientAttachment.new(
  ext_id: 5a41f3b5-7c6b-4db0-b076-b2c86ef37ed5,
  cluster_reference: ef44abb1-dbdc-479a-a4bf-35d64db0984e
)
```

