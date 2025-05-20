# NutanixVolumes::ListVmAttachmentsByVolumeGroupId200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**Array&lt;VolumesV40ConfigVmAttachment&gt;**](VolumesV40ConfigVmAttachment.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::ListVmAttachmentsByVolumeGroupId200Response.new(
  metadata: null,
  data: null
)
```

