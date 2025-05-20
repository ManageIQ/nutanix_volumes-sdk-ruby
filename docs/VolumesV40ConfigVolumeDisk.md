# NutanixVolumes::VolumesV40ConfigVolumeDisk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | A globally unique identifier that represents the tenant that owns this entity. The system automatically assigns it, and it and is immutable from an API consumer perspective (some use cases may cause this Id to change - For instance, a use case may require the transfer of ownership of the entity, but these cases are handled automatically on the server).  | [optional][readonly] |
| **ext_id** | **String** | A globally unique identifier of an instance that is suitable for external consumption.  | [optional][readonly] |
| **links** | [**Array&lt;CommonV10ResponseApiLink&gt;**](CommonV10ResponseApiLink.md) | A HATEOAS style link for the response.  Each link contains a user-friendly name identifying the link and an address for retrieving the particular resource.  | [optional][readonly] |
| **index** | **Integer** | Index of the disk in a Volume Group. This field is optional and immutable. | [optional] |
| **disk_size_bytes** | **Integer** | Size of the disk in bytes. This field is mandatory during Volume Group creation if a new disk is created on the storage container. | [optional] |
| **storage_container_id** | **String** | Storage container on which the disk must be created. This is a read-only field. | [optional][readonly] |
| **description** | **String** | Volume Disk description. This is an optional field. | [optional] |
| **disk_data_source_reference** | [**CommonV10ConfigEntityReference**](CommonV10ConfigEntityReference.md) |  | [optional] |
| **disk_storage_features** | [**VolumesV40ConfigDiskStorageFeatures**](VolumesV40ConfigDiskStorageFeatures.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigVolumeDisk.new(
  tenant_id: d92bfbe7-1b58-4493-ba79-3cf2a204bdca,
  ext_id: d4e34a80-abc5-46ca-8fcd-af3f00f2930a,
  links: null,
  index: 74,
  disk_size_bytes: 156650882979022,
  storage_container_id: 85858c65-8cb8-4aa3-a466-493d95850f9d,
  description: null,
  disk_data_source_reference: null,
  disk_storage_features: null
)
```

