# NutanixVolumes::VolumesV40StatsGetVolumeDiskStatsApiResponseData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40StatsGetVolumeDiskStatsApiResponseData.openapi_one_of
# =>
# [
#   :'VolumesV40ErrorErrorResponse',
#   :'VolumesV40StatsVolumeDiskStats'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40StatsGetVolumeDiskStatsApiResponseData.build(data)
# => #<VolumesV40ErrorErrorResponse:0x00007fdd4aab02a0>

NutanixVolumes::VolumesV40StatsGetVolumeDiskStatsApiResponseData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `VolumesV40ErrorErrorResponse`
- `VolumesV40StatsVolumeDiskStats`
- `nil` (if no type matches)

