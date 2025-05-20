# NutanixVolumes::CommonV10ConfigMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A code that uniquely identifies a message.  | [optional] |
| **message** | **String** | The description of the message.  | [optional] |
| **locale** | **String** | The locale for the message description.  | [optional][default to &#39;en_US&#39;] |
| **severity** | [**CommonV10ConfigMessageSeverity**](CommonV10ConfigMessageSeverity.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ConfigMessage.new(
  code: null,
  message: null,
  locale: null,
  severity: null
)
```

