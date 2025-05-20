# NutanixVolumes::VolumesV40ErrorAppMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The message string. | [optional] |
| **severity** | [**CommonV10ConfigMessageSeverity**](CommonV10ConfigMessageSeverity.md) |  | [optional] |
| **code** | **String** | The code associated with this message.This string is typically prefixed by the namespace the endpoint belongs to. For example: VMM-40000 | [optional] |
| **locale** | **String** | Locale for this message. The default locale would be &#39;en-US&#39;. | [optional][default to &#39;en_US&#39;] |
| **error_group** | **String** | The error group associated with this message of severity ERROR. | [optional] |
| **arguments_map** | **Hash&lt;String, String&gt;** | The map of argument name to value. | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ErrorAppMessage.new(
  message: null,
  severity: null,
  code: null,
  locale: null,
  error_group: null,
  arguments_map: null
)
```

