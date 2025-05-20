# NutanixVolumes::VolumesV40ConfigVolumeGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | A globally unique identifier that represents the tenant that owns this entity. The system automatically assigns it, and it and is immutable from an API consumer perspective (some use cases may cause this Id to change - For instance, a use case may require the transfer of ownership of the entity, but these cases are handled automatically on the server).  | [optional][readonly] |
| **ext_id** | **String** | A globally unique identifier of an instance that is suitable for external consumption.  | [optional][readonly] |
| **links** | [**Array&lt;CommonV10ResponseApiLink&gt;**](CommonV10ResponseApiLink.md) | A HATEOAS style link for the response.  Each link contains a user-friendly name identifying the link and an address for retrieving the particular resource.  | [optional][readonly] |
| **name** | **String** | Volume Group name. | [optional] |
| **description** | **String** | Volume Group description. This is an optional field. | [optional] |
| **should_load_balance_vm_attachments** | **Boolean** | Indicates whether to enable Volume Group load balancing for VM attachments. This cannot be enabled if there are iSCSI client attachments already associated with the Volume Group, and vice-versa. This is an optional field. | [optional][default to false] |
| **sharing_status** | [**VolumesV40ConfigSharingStatus**](VolumesV40ConfigSharingStatus.md) |  | [optional] |
| **target_prefix** | **String** | The specifications contain the target prefix for external clients as the value. This is an optional field. | [optional] |
| **target_name** | **String** | Name of the external client target that will be visible and accessible to the client. This is an optional field. | [optional] |
| **enabled_authentications** | [**VolumesV40ConfigAuthenticationType**](VolumesV40ConfigAuthenticationType.md) |  | [optional] |
| **iscsi_features** | [**VolumesV40ConfigIscsiFeatures**](VolumesV40ConfigIscsiFeatures.md) |  | [optional] |
| **created_by** | **String** | Service/user who created this Volume Group. This is an optional field. | [optional] |
| **cluster_reference** | **String** | The UUID of the cluster that will host the Volume Group. This is a mandatory field for creating a Volume Group on Prism Central. | [optional] |
| **storage_features** | [**VolumesV40ConfigStorageFeatures**](VolumesV40ConfigStorageFeatures.md) |  | [optional] |
| **usage_type** | [**VolumesV40ConfigUsageType**](VolumesV40ConfigUsageType.md) |  | [optional] |
| **attachment_type** | [**VolumesV40ConfigAttachmentType**](VolumesV40ConfigAttachmentType.md) |  | [optional] |
| **protocol** | [**VolumesV40ConfigProtocol**](VolumesV40ConfigProtocol.md) |  | [optional] |
| **is_hidden** | **Boolean** | Indicates whether the Volume Group is meant to be hidden or not. This is an optional field. If omitted, the VG will not be hidden. | [optional][default to false] |
| **disks** | [**Array&lt;VolumesV40ConfigVolumeDisk&gt;**](VolumesV40ConfigVolumeDisk.md) | A list of Volume Disks to be attached to the Volume Group. | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigVolumeGroup.new(
  tenant_id: d92bfbe7-1b58-4493-ba79-3cf2a204bdca,
  ext_id: d4e34a80-abc5-46ca-8fcd-af3f00f2930a,
  links: null,
  name: null,
  description: null,
  should_load_balance_vm_attachments: null,
  sharing_status: null,
  target_prefix: null,
  target_name: null,
  enabled_authentications: null,
  iscsi_features: null,
  created_by: null,
  cluster_reference: 0caed483-a63d-4c31-a5ca-70161af400af,
  storage_features: null,
  usage_type: null,
  attachment_type: null,
  protocol: null,
  is_hidden: null,
  disks: null
)
```

