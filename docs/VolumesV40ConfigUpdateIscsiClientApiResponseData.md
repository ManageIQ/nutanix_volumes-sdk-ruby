# NutanixVolumes::VolumesV40ConfigUpdateIscsiClientApiResponseData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40ConfigUpdateIscsiClientApiResponseData.openapi_one_of
# =>
# [
#   :'PrismV40ConfigTaskReference',
#   :'VolumesV40ErrorErrorResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::VolumesV40ConfigUpdateIscsiClientApiResponseData.build(data)
# => #<PrismV40ConfigTaskReference:0x00007fdd4aab02a0>

NutanixVolumes::VolumesV40ConfigUpdateIscsiClientApiResponseData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PrismV40ConfigTaskReference`
- `VolumesV40ErrorErrorResponse`
- `nil` (if no type matches)

