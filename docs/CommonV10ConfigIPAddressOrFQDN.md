# NutanixVolumes::CommonV10ConfigIPAddressOrFQDN

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipv4** | [**CommonV10ConfigIPv4Address**](CommonV10ConfigIPv4Address.md) |  | [optional] |
| **ipv6** | [**CommonV10ConfigIPv6Address**](CommonV10ConfigIPv6Address.md) |  | [optional] |
| **fqdn** | [**CommonV10ConfigFQDN**](CommonV10ConfigFQDN.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ConfigIPAddressOrFQDN.new(
  ipv4: null,
  ipv6: null,
  fqdn: null
)
```

