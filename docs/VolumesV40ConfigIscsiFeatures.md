# NutanixVolumes::VolumesV40ConfigIscsiFeatures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_secret** | **String** | Target secret in case of a CHAP authentication. This field must only be provided in case the authentication type is not set to CHAP. This is an optional field and it cannot be retrieved once configured. | [optional] |
| **enabled_authentications** | [**VolumesV40ConfigAuthenticationType**](VolumesV40ConfigAuthenticationType.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigIscsiFeatures.new(
  target_secret: *************,
  enabled_authentications: null
)
```

