# NutanixVolumes::VolumesV40StatsTimeValuePair

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | Timestamp is returned in Epoch format. | [optional] |
| **value** | **Integer** | Value of the stat at the corresponding timestamp value represented in Int64 format. | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40StatsTimeValuePair.new(
  timestamp: 2009-09-23T14:30-07:00,
  value: 49
)
```

