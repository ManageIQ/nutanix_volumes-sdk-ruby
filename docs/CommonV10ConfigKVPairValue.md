# NutanixVolumes::CommonV10ConfigKVPairValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::CommonV10ConfigKVPairValue.openapi_one_of
# =>
# [
#   :'Array<CommonV10ConfigMapOfStringWrapper>',
#   :'Array<Integer>',
#   :'Array<String>',
#   :'Boolean',
#   :'Hash<String, String>',
#   :'Integer',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nutanix_volumes'

NutanixVolumes::CommonV10ConfigKVPairValue.build(data)
# => #<Array<CommonV10ConfigMapOfStringWrapper>:0x00007fdd4aab02a0>

NutanixVolumes::CommonV10ConfigKVPairValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<CommonV10ConfigMapOfStringWrapper>`
- `Array<Integer>`
- `Array<String>`
- `Boolean`
- `Hash<String, String>`
- `Integer`
- `String`
- `nil` (if no type matches)

