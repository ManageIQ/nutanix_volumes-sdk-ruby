# NutanixVolumes::VolumesV40ConfigIscsiClient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | A globally unique identifier that represents the tenant that owns this entity. The system automatically assigns it, and it and is immutable from an API consumer perspective (some use cases may cause this Id to change - For instance, a use case may require the transfer of ownership of the entity, but these cases are handled automatically on the server).  | [optional][readonly] |
| **ext_id** | **String** | A globally unique identifier of an instance that is suitable for external consumption.  | [optional][readonly] |
| **links** | [**Array&lt;CommonV10ResponseApiLink&gt;**](CommonV10ResponseApiLink.md) | A HATEOAS style link for the response.  Each link contains a user-friendly name identifying the link and an address for retrieving the particular resource.  | [optional][readonly] |
| **iscsi_initiator_name** | **String** | iSCSI initiator name. Exactly one of iscsiInitiatorName and iscsiInitiatorNetworkId must be specified during the attach operation. This field is immutable. | [optional] |
| **iscsi_initiator_network_id** | [**CommonV10ConfigIPAddressOrFQDN**](CommonV10ConfigIPAddressOrFQDN.md) |  | [optional] |
| **client_secret** | **String** | iSCSI initiator client secret in case of CHAP authentication. This field should not be provided if the authentication type is not set to CHAP. | [optional] |
| **enabled_authentications** | [**VolumesV40ConfigAuthenticationType**](VolumesV40ConfigAuthenticationType.md) |  | [optional] |
| **attached_targets** | [**Array&lt;VolumesV40ConfigTargetParam&gt;**](VolumesV40ConfigTargetParam.md) |  | [optional][readonly] |
| **num_virtual_targets** | **Integer** | Number of virtual targets generated for the iSCSI target. This field is immutable. | [optional] |
| **cluster_reference** | **String** | The UUID of the cluster that will host the iSCSI client. This field is read-only. | [optional][readonly] |
| **attachment_site** | [**VolumesV40ConfigVolumeGroupAttachmentSite**](VolumesV40ConfigVolumeGroupAttachmentSite.md) |  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigIscsiClient.new(
  tenant_id: d92bfbe7-1b58-4493-ba79-3cf2a204bdca,
  ext_id: d4e34a80-abc5-46ca-8fcd-af3f00f2930a,
  links: null,
  iscsi_initiator_name: null,
  iscsi_initiator_network_id: null,
  client_secret: ***************,
  enabled_authentications: null,
  attached_targets: null,
  num_virtual_targets: 3,
  cluster_reference: e5827a56-63e5-4ced-9078-747a6506d177,
  attachment_site: null
)
```

