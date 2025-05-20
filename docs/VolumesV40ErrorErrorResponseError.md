# NutanixVolumes::VolumesV40ErrorErrorResponseError

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40ErrorErrorResponseError.openapi_one_of
# =>
# [
#   :'Array<VolumesV40ErrorAppMessage>',
#   :'VolumesV40ErrorSchemaValidationError'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40ErrorErrorResponseError.build(data)
# => #<Array<VolumesV40ErrorAppMessage>:0x00007fdd4aab02a0>

NutanixVolumes::VolumesV40ErrorErrorResponseError.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<VolumesV40ErrorAppMessage>`
- `VolumesV40ErrorSchemaValidationError`
- `nil` (if no type matches)

