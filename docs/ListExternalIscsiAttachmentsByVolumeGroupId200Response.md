# NutanixVolumes::ListExternalIscsiAttachmentsByVolumeGroupId200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**CommonV10ResponseApiResponseMetadata**](CommonV10ResponseApiResponseMetadata.md) |  | [optional] |
| **data** | [**Array&lt;VolumesV40ConfigIscsiClientAttachment&gt;**](VolumesV40ConfigIscsiClientAttachment.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::ListExternalIscsiAttachmentsByVolumeGroupId200Response.new(
  metadata: null,
  data: null
)
```

