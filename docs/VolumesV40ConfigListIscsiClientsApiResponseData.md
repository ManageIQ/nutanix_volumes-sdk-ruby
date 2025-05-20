# NutanixVolumes::VolumesV40ConfigListIscsiClientsApiResponseData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40ConfigListIscsiClientsApiResponseData.openapi_one_of
# =>
# [
#   :'Array<VolumesV40ConfigIscsiClient>',
#   :'VolumesV40ErrorErrorResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40ConfigListIscsiClientsApiResponseData.build(data)
# => #<Array<VolumesV40ConfigIscsiClient>:0x00007fdd4aab02a0>

NutanixVolumes::VolumesV40ConfigListIscsiClientsApiResponseData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<VolumesV40ConfigIscsiClient>`
- `VolumesV40ErrorErrorResponse`
- `nil` (if no type matches)

