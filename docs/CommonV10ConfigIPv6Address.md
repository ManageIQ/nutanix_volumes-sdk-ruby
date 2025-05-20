# NutanixVolumes::CommonV10ConfigIPv6Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The IPv6 address of the host.  |  |
| **prefix_length** | **Integer** | The prefix length of the network to which this host IPv6 address belongs.  | [optional][default to 128] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ConfigIPv6Address.new(
  value: 7d9a:64df:8ddf:d839:c6c4:eae3:5c0b:a4ea,
  prefix_length: null
)
```

