# NutanixVolumes::CommonV10ConfigMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_reference_id** | **String** | A globally unique identifier that represents the owner of this resource.  | [optional] |
| **owner_user_name** | **String** | The userName of the owner of this resource.  | [optional] |
| **project_reference_id** | **String** | A globally unique identifier that represents the project this resource belongs to.  | [optional] |
| **project_name** | **String** | The name of the project this resource belongs to.  | [optional] |
| **category_ids** | **Array&lt;String&gt;** | A list of globally unique identifiers that represent all the categories the resource is associated with.  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ConfigMetadata.new(
  owner_reference_id: c6353577-8b07-442e-868a-5be8776ab54a,
  owner_user_name: null,
  project_reference_id: d8b7ff9e-803a-4d74-a409-32f50e12961b,
  project_name: null,
  category_ids: null
)
```

