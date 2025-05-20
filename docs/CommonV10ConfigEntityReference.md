# NutanixVolumes::CommonV10ConfigEntityReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | A globally unique identifier of an instance that is suitable for external consumption.  | [optional] |
| **name** | **String** | Name of entity that&#39;s represented by this reference.  | [optional] |
| **uris** | **Array&lt;String&gt;** | URI of entities that&#39;s represented by this reference. | [optional] |
| **entity_type** | [**CommonV10ConfigEntityType**](CommonV10ConfigEntityType.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ConfigEntityReference.new(
  ext_id: 1632c00d-c762-4aa5-b370-440584b6952b,
  name: null,
  uris: null,
  entity_type: null
)
```

