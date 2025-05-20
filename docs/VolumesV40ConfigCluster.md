# NutanixVolumes::VolumesV40ConfigCluster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_ext_id** | **String** | Cluster Uuid. | [optional][readonly] |
| **cluster_name** | **String** | Name of the Cluster. | [optional][readonly] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::VolumesV40ConfigCluster.new(
  cluster_ext_id: 9c0828ba-236e-43bf-86de-eb73cc454c49,
  cluster_name: null
)
```

