# NutanixVolumes::CommonV10ConfigIPv4Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The IPv4 address of the host.  |  |
| **prefix_length** | **Integer** | The prefix length of the network to which this host IPv4 address belongs.  | [optional][default to 32] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ConfigIPv4Address.new(
  value: 254.180.178.15,
  prefix_length: null
)
```

