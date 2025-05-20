# NutanixVolumes::CommonV10ConfigFQDN

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The fully qualified domain name of the host.  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ConfigFQDN.new(
  value: www.example-corp.com
)
```

