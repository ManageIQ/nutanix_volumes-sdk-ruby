# NutanixVolumes::VolumesV40ConfigNvmfClient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **String** | A globally unique identifier that represents the tenant that owns this entity. The system automatically assigns it, and it and is immutable from an API consumer perspective (some use cases may cause this Id to change - For instance, a use case may require the transfer of ownership of the entity, but these cases are handled automatically on the server).  | [optional][readonly] |
| **ext_id** | **String** | A globally unique identifier of an instance that is suitable for external consumption.  | [optional][readonly] |
| **links** | [**Array&lt;CommonV10ResponseApiLink&gt;**](CommonV10ResponseApiLink.md) | A HATEOAS style link for the response.  Each link contains a user-friendly name identifying the link and an address for retrieving the particular resource.  | [optional][readonly] |
| **nvmf_initiator_name** | **String** | NVMf client qualified name. | [optional] |
| **attached_targets** | **Array&lt;String&gt;** | List of all subsystems connected to a NVMf client. | [optional][readonly] |
| **cluster_reference** | **String** | The UUID of the cluster that will host the NVMf client. | [optional][readonly] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigNvmfClient.new(
  tenant_id: d92bfbe7-1b58-4493-ba79-3cf2a204bdca,
  ext_id: d4e34a80-abc5-46ca-8fcd-af3f00f2930a,
  links: null,
  nvmf_initiator_name: null,
  attached_targets: null,
  cluster_reference: 92b81b6f-ff64-4745-846b-4678b9db4b77
)
```

