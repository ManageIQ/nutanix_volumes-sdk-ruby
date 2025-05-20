# NutanixVolumes::VolumeGroupsApi

All URIs are relative to *https://:9440/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**associate_category**](VolumeGroupsApi.md#associate_category) | **POST** /volumes/v4.0/config/volume-groups/{extId}/$actions/associate-category | Associate category to a Volume Group |
| [**attach_iscsi_client**](VolumeGroupsApi.md#attach_iscsi_client) | **POST** /volumes/v4.0/config/volume-groups/{extId}/$actions/attach-iscsi-client | Attach an iSCSI client to the given Volume Group |
| [**attach_vm**](VolumeGroupsApi.md#attach_vm) | **POST** /volumes/v4.0/config/volume-groups/{extId}/$actions/attach-vm | Attach an AHV VM to the given Volume Group |
| [**create_volume_disk**](VolumeGroupsApi.md#create_volume_disk) | **POST** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/disks | Creates a new Volume Disk |
| [**create_volume_group**](VolumeGroupsApi.md#create_volume_group) | **POST** /volumes/v4.0/config/volume-groups | Creates a new Volume Group |
| [**delete_volume_disk_by_id**](VolumeGroupsApi.md#delete_volume_disk_by_id) | **DELETE** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/disks/{extId} | Delete a Volume Disk |
| [**delete_volume_group_by_id**](VolumeGroupsApi.md#delete_volume_group_by_id) | **DELETE** /volumes/v4.0/config/volume-groups/{extId} | Delete the Volume Group |
| [**detach_iscsi_client**](VolumeGroupsApi.md#detach_iscsi_client) | **POST** /volumes/v4.0/config/volume-groups/{extId}/$actions/detach-iscsi-client | Detach an iSCSi client from the given Volume Group |
| [**detach_vm**](VolumeGroupsApi.md#detach_vm) | **POST** /volumes/v4.0/config/volume-groups/{extId}/$actions/detach-vm | Detach an AHV VM from the given Volume Group |
| [**disassociate_category**](VolumeGroupsApi.md#disassociate_category) | **POST** /volumes/v4.0/config/volume-groups/{extId}/$actions/disassociate-category | Disassociate category from a Volume Group |
| [**get_volume_disk_by_id**](VolumeGroupsApi.md#get_volume_disk_by_id) | **GET** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/disks/{extId} | Get the details of a Volume Disk |
| [**get_volume_disk_stats**](VolumeGroupsApi.md#get_volume_disk_stats) | **GET** /volumes/v4.0/stats/volume-groups/{volumeGroupExtId}/disks/{extId} | Get statistics for a Volume Disk |
| [**get_volume_group_by_id**](VolumeGroupsApi.md#get_volume_group_by_id) | **GET** /volumes/v4.0/config/volume-groups/{extId} | Get a Volume Group |
| [**get_volume_group_metadata_by_id**](VolumeGroupsApi.md#get_volume_group_metadata_by_id) | **GET** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/metadata | Fetch metadata information associated with a Volume Group. |
| [**get_volume_group_stats**](VolumeGroupsApi.md#get_volume_group_stats) | **GET** /volumes/v4.0/stats/volume-groups/{extId} | Get statistics for a Volume Group |
| [**list_category_associations_by_volume_group_id**](VolumeGroupsApi.md#list_category_associations_by_volume_group_id) | **GET** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/category-associations | List all the category details that are associated with the Volume Group |
| [**list_external_iscsi_attachments_by_volume_group_id**](VolumeGroupsApi.md#list_external_iscsi_attachments_by_volume_group_id) | **GET** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/external-iscsi-attachments | List all the iSCSI attachments associated with the given Volume Group |
| [**list_vm_attachments_by_volume_group_id**](VolumeGroupsApi.md#list_vm_attachments_by_volume_group_id) | **GET** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/vm-attachments | List all the VM attachments for a Volume Group |
| [**list_volume_disks_by_volume_group_id**](VolumeGroupsApi.md#list_volume_disks_by_volume_group_id) | **GET** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/disks | List all the Volume Disks attached to the Volume Group |
| [**list_volume_groups**](VolumeGroupsApi.md#list_volume_groups) | **GET** /volumes/v4.0/config/volume-groups | List all the Volume Groups |
| [**revert_volume_group**](VolumeGroupsApi.md#revert_volume_group) | **POST** /volumes/v4.0/config/volume-groups/{extId}/$actions/revert | Revert a Volume Group |
| [**update_volume_disk_by_id**](VolumeGroupsApi.md#update_volume_disk_by_id) | **PUT** /volumes/v4.0/config/volume-groups/{volumeGroupExtId}/disks/{extId} | Update a specified Volume Disk |
| [**update_volume_group_by_id**](VolumeGroupsApi.md#update_volume_group_by_id) | **PUT** /volumes/v4.0/config/volume-groups/{extId} | Update details of a specified Volume Group |


## associate_category

> <AssociateCategory202Response> associate_category(ext_id, volumes_v40_config_category_entity_references)

Associate category to a Volume Group

Associates a category to a Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = '54d75100-6542-4136-9437-c87f8ff5b4b1' # String | The external identifier of a Volume Group.
volumes_v40_config_category_entity_references = NutanixVolumes::VolumesV40ConfigCategoryEntityReferences.new # VolumesV40ConfigCategoryEntityReferences | The list of categories to be associated/disassociated with the Volume Group. This is a mandatory field.

begin
  # Associate category to a Volume Group
  result = api_instance.associate_category(ext_id, volumes_v40_config_category_entity_references)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->associate_category: #{e}"
end
```

#### Using the associate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociateCategory202Response>, Integer, Hash)> associate_category_with_http_info(ext_id, volumes_v40_config_category_entity_references)

```ruby
begin
  # Associate category to a Volume Group
  data, status_code, headers = api_instance.associate_category_with_http_info(ext_id, volumes_v40_config_category_entity_references)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociateCategory202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->associate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **volumes_v40_config_category_entity_references** | [**VolumesV40ConfigCategoryEntityReferences**](VolumesV40ConfigCategoryEntityReferences.md) | The list of categories to be associated/disassociated with the Volume Group. This is a mandatory field. |  |

### Return type

[**AssociateCategory202Response**](AssociateCategory202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_iscsi_client

> <AttachIscsiClient202Response> attach_iscsi_client(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client)

Attach an iSCSI client to the given Volume Group

Attaches iSCSI initiator to a Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = '629ecbdf-2378-4056-b031-6f2c0e0c29fc' # String | The external identifier of a Volume Group.
ntnx_request_id = '5ad58356-ab16-42b9-8e46-5e0c55228610' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_iscsi_client = NutanixVolumes::VolumesV40ConfigIscsiClient.new # VolumesV40ConfigIscsiClient | A model that represents an iSCSI client that can be associated with a Volume Group as an external attachment.

begin
  # Attach an iSCSI client to the given Volume Group
  result = api_instance.attach_iscsi_client(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->attach_iscsi_client: #{e}"
end
```

#### Using the attach_iscsi_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AttachIscsiClient202Response>, Integer, Hash)> attach_iscsi_client_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client)

```ruby
begin
  # Attach an iSCSI client to the given Volume Group
  data, status_code, headers = api_instance.attach_iscsi_client_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AttachIscsiClient202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->attach_iscsi_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_iscsi_client** | [**VolumesV40ConfigIscsiClient**](VolumesV40ConfigIscsiClient.md) | A model that represents an iSCSI client that can be associated with a Volume Group as an external attachment. |  |

### Return type

[**AttachIscsiClient202Response**](AttachIscsiClient202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_vm

> <AttachVm202Response> attach_vm(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)

Attach an AHV VM to the given Volume Group

Attaches VM to a Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = '1cdb5b48-fb2c-41b6-b751-b504117ee3e2' # String | The external identifier of a Volume Group.
ntnx_request_id = '3a9ce3a7-e6e6-4001-8826-3e83b1e51868' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_vm_attachment = NutanixVolumes::VolumesV40ConfigVmAttachment.new({ext_id: '1eafb1ad-21a1-4c3d-81da-1a99d3c05c72'}) # VolumesV40ConfigVmAttachment | A model that represents a VM reference that can be associated with a Volume Group as an AHV hypervisor attachment.

begin
  # Attach an AHV VM to the given Volume Group
  result = api_instance.attach_vm(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->attach_vm: #{e}"
end
```

#### Using the attach_vm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AttachVm202Response>, Integer, Hash)> attach_vm_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)

```ruby
begin
  # Attach an AHV VM to the given Volume Group
  data, status_code, headers = api_instance.attach_vm_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AttachVm202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->attach_vm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_vm_attachment** | [**VolumesV40ConfigVmAttachment**](VolumesV40ConfigVmAttachment.md) | A model that represents a VM reference that can be associated with a Volume Group as an AHV hypervisor attachment. |  |

### Return type

[**AttachVm202Response**](AttachVm202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_volume_disk

> <CreateVolumeDisk202Response> create_volume_disk(volume_group_ext_id, ntnx_request_id, volumes_v40_config_volume_disk)

Creates a new Volume Disk

Creates a new Volume Disk.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = 'cf7de8b9-88ed-477d-a602-c34ab7174c01' # String | The external identifier of a Volume Group.
ntnx_request_id = 'f417325e-35f5-4e77-a7a9-c00f5eb3a2d6' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_volume_disk = NutanixVolumes::VolumesV40ConfigVolumeDisk.new # VolumesV40ConfigVolumeDisk | A model that represents a Volume Disk associated with a Volume Group, supported by a backing file on DSF.

begin
  # Creates a new Volume Disk
  result = api_instance.create_volume_disk(volume_group_ext_id, ntnx_request_id, volumes_v40_config_volume_disk)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->create_volume_disk: #{e}"
end
```

#### Using the create_volume_disk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVolumeDisk202Response>, Integer, Hash)> create_volume_disk_with_http_info(volume_group_ext_id, ntnx_request_id, volumes_v40_config_volume_disk)

```ruby
begin
  # Creates a new Volume Disk
  data, status_code, headers = api_instance.create_volume_disk_with_http_info(volume_group_ext_id, ntnx_request_id, volumes_v40_config_volume_disk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVolumeDisk202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->create_volume_disk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_volume_disk** | [**VolumesV40ConfigVolumeDisk**](VolumesV40ConfigVolumeDisk.md) | A model that represents a Volume Disk associated with a Volume Group, supported by a backing file on DSF. |  |

### Return type

[**CreateVolumeDisk202Response**](CreateVolumeDisk202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_volume_group

> <CreateVolumeGroup202Response> create_volume_group(ntnx_request_id, volumes_v40_config_volume_group)

Creates a new Volume Group

Creates a new Volume Group.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ntnx_request_id = '19b737b6-1fa1-4e19-9016-361ce80999a5' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_volume_group = NutanixVolumes::VolumesV40ConfigVolumeGroup.new # VolumesV40ConfigVolumeGroup | A model that represents a Volume Group resource.

begin
  # Creates a new Volume Group
  result = api_instance.create_volume_group(ntnx_request_id, volumes_v40_config_volume_group)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->create_volume_group: #{e}"
end
```

#### Using the create_volume_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateVolumeGroup202Response>, Integer, Hash)> create_volume_group_with_http_info(ntnx_request_id, volumes_v40_config_volume_group)

```ruby
begin
  # Creates a new Volume Group
  data, status_code, headers = api_instance.create_volume_group_with_http_info(ntnx_request_id, volumes_v40_config_volume_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateVolumeGroup202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->create_volume_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_volume_group** | [**VolumesV40ConfigVolumeGroup**](VolumesV40ConfigVolumeGroup.md) | A model that represents a Volume Group resource. |  |

### Return type

[**CreateVolumeGroup202Response**](CreateVolumeGroup202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_volume_disk_by_id

> <DeleteVolumeDiskById202Response> delete_volume_disk_by_id(volume_group_ext_id, ext_id, ntnx_request_id)

Delete a Volume Disk

Deletes a Volume Disk identified by {extId} in the Volume Group identified by {volumeGroupExtId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '924abd43-6bef-4a44-b3b5-16f2ad6fc2a5' # String | The external identifier of a Volume Group.
ext_id = 'c67de97b-a302-453f-9295-7cd235e7b0db' # String | The external identifier of a Volume Disk.
ntnx_request_id = '0a4cfff7-ab9c-42c4-bc01-c3b53ab1fb4e' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 

begin
  # Delete a Volume Disk
  result = api_instance.delete_volume_disk_by_id(volume_group_ext_id, ext_id, ntnx_request_id)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->delete_volume_disk_by_id: #{e}"
end
```

#### Using the delete_volume_disk_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteVolumeDiskById202Response>, Integer, Hash)> delete_volume_disk_by_id_with_http_info(volume_group_ext_id, ext_id, ntnx_request_id)

```ruby
begin
  # Delete a Volume Disk
  data, status_code, headers = api_instance.delete_volume_disk_by_id_with_http_info(volume_group_ext_id, ext_id, ntnx_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteVolumeDiskById202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->delete_volume_disk_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ext_id** | **String** | The external identifier of a Volume Disk. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |

### Return type

[**DeleteVolumeDiskById202Response**](DeleteVolumeDiskById202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_volume_group_by_id

> <DeleteVolumeGroupById202Response> delete_volume_group_by_id(ext_id, ntnx_request_id)

Delete the Volume Group

Delete the Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = 'ccf79021-64c1-49aa-8abb-3bf328a0556e' # String | The external identifier of a Volume Group.
ntnx_request_id = '0ff16953-91de-4cf4-9e9e-7a7f3ef6cacb' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 

begin
  # Delete the Volume Group
  result = api_instance.delete_volume_group_by_id(ext_id, ntnx_request_id)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->delete_volume_group_by_id: #{e}"
end
```

#### Using the delete_volume_group_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteVolumeGroupById202Response>, Integer, Hash)> delete_volume_group_by_id_with_http_info(ext_id, ntnx_request_id)

```ruby
begin
  # Delete the Volume Group
  data, status_code, headers = api_instance.delete_volume_group_by_id_with_http_info(ext_id, ntnx_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteVolumeGroupById202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->delete_volume_group_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |

### Return type

[**DeleteVolumeGroupById202Response**](DeleteVolumeGroupById202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detach_iscsi_client

> <DetachIscsiClient202Response> detach_iscsi_client(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client_attachment)

Detach an iSCSi client from the given Volume Group

Detaches iSCSI initiator identified by {extId} from a Volume Group identified by {volumeGroupExtId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = '8173a21d-2c50-4e1d-a9f4-e7df86ceb2ad' # String | The external identifier of a Volume Group.
ntnx_request_id = '9c6eb62a-21fa-42a1-9438-5361e76758c2' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_iscsi_client_attachment = NutanixVolumes::VolumesV40ConfigIscsiClientAttachment.new # VolumesV40ConfigIscsiClientAttachment | A model that represents an iSCSI client that can be associated with a Volume Group as an external attachment. It contains the minimal properties required for the attachment.

begin
  # Detach an iSCSi client from the given Volume Group
  result = api_instance.detach_iscsi_client(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client_attachment)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->detach_iscsi_client: #{e}"
end
```

#### Using the detach_iscsi_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetachIscsiClient202Response>, Integer, Hash)> detach_iscsi_client_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client_attachment)

```ruby
begin
  # Detach an iSCSi client from the given Volume Group
  data, status_code, headers = api_instance.detach_iscsi_client_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_iscsi_client_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetachIscsiClient202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->detach_iscsi_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_iscsi_client_attachment** | [**VolumesV40ConfigIscsiClientAttachment**](VolumesV40ConfigIscsiClientAttachment.md) | A model that represents an iSCSI client that can be associated with a Volume Group as an external attachment. It contains the minimal properties required for the attachment. |  |

### Return type

[**DetachIscsiClient202Response**](DetachIscsiClient202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## detach_vm

> <DetachVm202Response> detach_vm(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)

Detach an AHV VM from the given Volume Group

Detaches VM identified by {extId} from a Volume Group identified by {volumeGroupExtId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = 'd09f033e-c851-4ca4-acfd-5e051b6a4692' # String | The external identifier of a Volume Group.
ntnx_request_id = 'f8a7f68d-3fec-41d2-9daa-e1036fce507e' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_vm_attachment = NutanixVolumes::VolumesV40ConfigVmAttachment.new({ext_id: '1eafb1ad-21a1-4c3d-81da-1a99d3c05c72'}) # VolumesV40ConfigVmAttachment | A model that represents a VM reference that can be associated with a Volume Group as an AHV hypervisor attachment.

begin
  # Detach an AHV VM from the given Volume Group
  result = api_instance.detach_vm(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->detach_vm: #{e}"
end
```

#### Using the detach_vm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetachVm202Response>, Integer, Hash)> detach_vm_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)

```ruby
begin
  # Detach an AHV VM from the given Volume Group
  data, status_code, headers = api_instance.detach_vm_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_vm_attachment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetachVm202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->detach_vm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_vm_attachment** | [**VolumesV40ConfigVmAttachment**](VolumesV40ConfigVmAttachment.md) | A model that represents a VM reference that can be associated with a Volume Group as an AHV hypervisor attachment. |  |

### Return type

[**DetachVm202Response**](DetachVm202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disassociate_category

> <DisassociateCategory202Response> disassociate_category(ext_id, volumes_v40_config_category_entity_references)

Disassociate category from a Volume Group

Disassociates a category from a Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = '3e05bb6a-a87b-45de-96ca-e3dfaaedcc60' # String | The external identifier of a Volume Group.
volumes_v40_config_category_entity_references = NutanixVolumes::VolumesV40ConfigCategoryEntityReferences.new # VolumesV40ConfigCategoryEntityReferences | The list of categories to be associated/disassociated with the Volume Group. This is a mandatory field.

begin
  # Disassociate category from a Volume Group
  result = api_instance.disassociate_category(ext_id, volumes_v40_config_category_entity_references)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->disassociate_category: #{e}"
end
```

#### Using the disassociate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisassociateCategory202Response>, Integer, Hash)> disassociate_category_with_http_info(ext_id, volumes_v40_config_category_entity_references)

```ruby
begin
  # Disassociate category from a Volume Group
  data, status_code, headers = api_instance.disassociate_category_with_http_info(ext_id, volumes_v40_config_category_entity_references)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisassociateCategory202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->disassociate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **volumes_v40_config_category_entity_references** | [**VolumesV40ConfigCategoryEntityReferences**](VolumesV40ConfigCategoryEntityReferences.md) | The list of categories to be associated/disassociated with the Volume Group. This is a mandatory field. |  |

### Return type

[**DisassociateCategory202Response**](DisassociateCategory202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_volume_disk_by_id

> <GetVolumeDiskById200Response> get_volume_disk_by_id(volume_group_ext_id, ext_id)

Get the details of a Volume Disk

Query the Volume Disk identified by {extId} in the Volume Group identified by {volumeGroupExtId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '3770be9d-06be-4e25-b85d-3457d9b0ceb1' # String | The external identifier of a Volume Group.
ext_id = '1d92110d-26b5-46c0-8c93-20b8171373e0' # String | The external identifier of a Volume Disk.

begin
  # Get the details of a Volume Disk
  result = api_instance.get_volume_disk_by_id(volume_group_ext_id, ext_id)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_disk_by_id: #{e}"
end
```

#### Using the get_volume_disk_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVolumeDiskById200Response>, Integer, Hash)> get_volume_disk_by_id_with_http_info(volume_group_ext_id, ext_id)

```ruby
begin
  # Get the details of a Volume Disk
  data, status_code, headers = api_instance.get_volume_disk_by_id_with_http_info(volume_group_ext_id, ext_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVolumeDiskById200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_disk_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ext_id** | **String** | The external identifier of a Volume Disk. |  |

### Return type

[**GetVolumeDiskById200Response**](GetVolumeDiskById200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volume_disk_stats

> <GetVolumeDiskStats200Response> get_volume_disk_stats(volume_group_ext_id, ext_id, start_time, end_time, opts)

Get statistics for a Volume Disk

Query the Volume Disk stats identified by {diskExtId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '452d0b7f-b000-4ff7-9d48-911df2585c9a' # String | The external identifier of a Volume Group.
ext_id = 'cdb79e18-a475-4ab5-80fb-174b6b678e92' # String | The external identifier of a Volume Disk.
start_time = Time.parse('2009-09-23T14:30-07:00') # Time | The start time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, start time of 2022-04-23T01:23:45.678+09:00 would consider all stats starting at 1:23:45.678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html 
end_time = Time.parse('2009-09-23T14:30-07:00') # Time | The end time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, end time of 2022-04-23T013:23:45.678+09:00 would consider all stats till 13:23:45 .678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html 
opts = {
  sampling_interval: 85, # Integer | The sampling interval in seconds at which statistical data should be collected. For example, if you want performance statistics every 30 seconds, then provide the value as 30. 
  stat_type: NutanixVolumes::CommonV10StatsDownSamplingOperator::SUM, # CommonV10StatsDownSamplingOperator | 
  select: 'select_example' # String | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - controllerAvgIOLatencyUsecs - controllerAvgReadIOLatencyUsecs - controllerAvgWriteIOLatencyUsecs - controllerIOBandwidthKBps - controllerNumIOPS - controllerNumReadIOPS - controllerNumWriteIOPS - controllerReadIOBandwidthKBps - controllerUserBytes - controllerWriteIOBandwidthKBps 
}

begin
  # Get statistics for a Volume Disk
  result = api_instance.get_volume_disk_stats(volume_group_ext_id, ext_id, start_time, end_time, opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_disk_stats: #{e}"
end
```

#### Using the get_volume_disk_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVolumeDiskStats200Response>, Integer, Hash)> get_volume_disk_stats_with_http_info(volume_group_ext_id, ext_id, start_time, end_time, opts)

```ruby
begin
  # Get statistics for a Volume Disk
  data, status_code, headers = api_instance.get_volume_disk_stats_with_http_info(volume_group_ext_id, ext_id, start_time, end_time, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVolumeDiskStats200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_disk_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ext_id** | **String** | The external identifier of a Volume Disk. |  |
| **start_time** | **Time** | The start time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, start time of 2022-04-23T01:23:45.678+09:00 would consider all stats starting at 1:23:45.678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html  |  |
| **end_time** | **Time** | The end time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, end time of 2022-04-23T013:23:45.678+09:00 would consider all stats till 13:23:45 .678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html  |  |
| **sampling_interval** | **Integer** | The sampling interval in seconds at which statistical data should be collected. For example, if you want performance statistics every 30 seconds, then provide the value as 30.  | [optional] |
| **stat_type** | [**CommonV10StatsDownSamplingOperator**](.md) |  | [optional] |
| **select** | **String** | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - controllerAvgIOLatencyUsecs - controllerAvgReadIOLatencyUsecs - controllerAvgWriteIOLatencyUsecs - controllerIOBandwidthKBps - controllerNumIOPS - controllerNumReadIOPS - controllerNumWriteIOPS - controllerReadIOBandwidthKBps - controllerUserBytes - controllerWriteIOBandwidthKBps  | [optional] |

### Return type

[**GetVolumeDiskStats200Response**](GetVolumeDiskStats200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volume_group_by_id

> <GetVolumeGroupById200Response> get_volume_group_by_id(ext_id)

Get a Volume Group

Query the Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = 'd09aeec9-5bb7-4bfd-9717-a051178f6e7c' # String | The external identifier of a Volume Group.

begin
  # Get a Volume Group
  result = api_instance.get_volume_group_by_id(ext_id)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_group_by_id: #{e}"
end
```

#### Using the get_volume_group_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVolumeGroupById200Response>, Integer, Hash)> get_volume_group_by_id_with_http_info(ext_id)

```ruby
begin
  # Get a Volume Group
  data, status_code, headers = api_instance.get_volume_group_by_id_with_http_info(ext_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVolumeGroupById200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_group_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |

### Return type

[**GetVolumeGroupById200Response**](GetVolumeGroupById200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volume_group_metadata_by_id

> <GetVolumeGroupMetadataById200Response> get_volume_group_metadata_by_id(volume_group_ext_id)

Fetch metadata information associated with a Volume Group.

Query for metadata information which is associated with the Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = 'ff9d2a26-0380-48e0-8b6b-a5cc76867297' # String | The external identifier of a Volume Group.

begin
  # Fetch metadata information associated with a Volume Group.
  result = api_instance.get_volume_group_metadata_by_id(volume_group_ext_id)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_group_metadata_by_id: #{e}"
end
```

#### Using the get_volume_group_metadata_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVolumeGroupMetadataById200Response>, Integer, Hash)> get_volume_group_metadata_by_id_with_http_info(volume_group_ext_id)

```ruby
begin
  # Fetch metadata information associated with a Volume Group.
  data, status_code, headers = api_instance.get_volume_group_metadata_by_id_with_http_info(volume_group_ext_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVolumeGroupMetadataById200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_group_metadata_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |

### Return type

[**GetVolumeGroupMetadataById200Response**](GetVolumeGroupMetadataById200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_volume_group_stats

> <GetVolumeGroupStats200Response> get_volume_group_stats(ext_id, start_time, end_time, opts)

Get statistics for a Volume Group

Query the Volume Group stats identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = '4572dfb1-6321-469e-80bc-059771fc6f61' # String | The external identifier of a Volume Group.
start_time = Time.parse('2009-09-23T14:30-07:00') # Time | The start time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, start time of 2022-04-23T01:23:45.678+09:00 would consider all stats starting at 1:23:45.678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html 
end_time = Time.parse('2009-09-23T14:30-07:00') # Time | The end time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, end time of 2022-04-23T013:23:45.678+09:00 would consider all stats till 13:23:45 .678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html 
opts = {
  sampling_interval: 41, # Integer | The sampling interval in seconds at which statistical data should be collected. For example, if you want performance statistics every 30 seconds, then provide the value as 30. 
  stat_type: NutanixVolumes::CommonV10StatsDownSamplingOperator::SUM, # CommonV10StatsDownSamplingOperator | 
  select: 'select_example' # String | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - controllerAvgIOLatencyUsecs - controllerAvgReadIOLatencyUsecs - controllerAvgWriteIOLatencyUsecs - controllerIOBandwidthKBps - controllerNumIOPS - controllerNumReadIOPS - controllerNumWriteIOPS - controllerReadIOBandwidthKBps - controllerUserBytes - controllerWriteIOBandwidthKBps 
}

begin
  # Get statistics for a Volume Group
  result = api_instance.get_volume_group_stats(ext_id, start_time, end_time, opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_group_stats: #{e}"
end
```

#### Using the get_volume_group_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVolumeGroupStats200Response>, Integer, Hash)> get_volume_group_stats_with_http_info(ext_id, start_time, end_time, opts)

```ruby
begin
  # Get statistics for a Volume Group
  data, status_code, headers = api_instance.get_volume_group_stats_with_http_info(ext_id, start_time, end_time, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVolumeGroupStats200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->get_volume_group_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **start_time** | **Time** | The start time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, start time of 2022-04-23T01:23:45.678+09:00 would consider all stats starting at 1:23:45.678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html  |  |
| **end_time** | **Time** | The end time of the period for which stats should be reported. The value should be in extended ISO-8601 format. For example, end time of 2022-04-23T013:23:45.678+09:00 would consider all stats till 13:23:45 .678 on the 23rd of April 2022. Details around ISO-8601 format can be found at https://www.iso.org/standard/70907.html  |  |
| **sampling_interval** | **Integer** | The sampling interval in seconds at which statistical data should be collected. For example, if you want performance statistics every 30 seconds, then provide the value as 30.  | [optional] |
| **stat_type** | [**CommonV10StatsDownSamplingOperator**](.md) |  | [optional] |
| **select** | **String** | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - controllerAvgIOLatencyUsecs - controllerAvgReadIOLatencyUsecs - controllerAvgWriteIOLatencyUsecs - controllerIOBandwidthKBps - controllerNumIOPS - controllerNumReadIOPS - controllerNumWriteIOPS - controllerReadIOBandwidthKBps - controllerUserBytes - controllerWriteIOBandwidthKBps  | [optional] |

### Return type

[**GetVolumeGroupStats200Response**](GetVolumeGroupStats200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_category_associations_by_volume_group_id

> <ListCategoryAssociationsByVolumeGroupId200Response> list_category_associations_by_volume_group_id(volume_group_ext_id, opts)

List all the category details that are associated with the Volume Group

Query the category details that are associated with the Volume Group identified by {volumeGroupExtId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '1424a657-255c-4c8f-ae75-762a6e6c7947' # String | The external identifier of a Volume Group.
opts = {
  page: 56, # Integer | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results. 
  limit: 56 # Integer | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set. 
}

begin
  # List all the category details that are associated with the Volume Group
  result = api_instance.list_category_associations_by_volume_group_id(volume_group_ext_id, opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_category_associations_by_volume_group_id: #{e}"
end
```

#### Using the list_category_associations_by_volume_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCategoryAssociationsByVolumeGroupId200Response>, Integer, Hash)> list_category_associations_by_volume_group_id_with_http_info(volume_group_ext_id, opts)

```ruby
begin
  # List all the category details that are associated with the Volume Group
  data, status_code, headers = api_instance.list_category_associations_by_volume_group_id_with_http_info(volume_group_ext_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCategoryAssociationsByVolumeGroupId200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_category_associations_by_volume_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **page** | **Integer** | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results.  | [optional][default to 0] |
| **limit** | **Integer** | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set.  | [optional][default to 50] |

### Return type

[**ListCategoryAssociationsByVolumeGroupId200Response**](ListCategoryAssociationsByVolumeGroupId200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_external_iscsi_attachments_by_volume_group_id

> <ListExternalIscsiAttachmentsByVolumeGroupId200Response> list_external_iscsi_attachments_by_volume_group_id(volume_group_ext_id, opts)

List all the iSCSI attachments associated with the given Volume Group

Query the list of external iSCSI attachments for a Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '7feee66b-a334-49ad-ba99-09c93bb5a35d' # String | The external identifier of a Volume Group.
opts = {
  page: 56, # Integer | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results. 
  limit: 56, # Integer | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set. 
  filter: 'filter_example', # String | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter '$filter=name eq 'karbon-ntnx-1.0' would filter the result on cluster name 'karbon-ntnx1.0', filter '$filter=startswith(name, 'C')' would filter on cluster name starting with 'C'. The filter can be applied to the following fields: - clusterReference - extId 
  orderby: 'orderby_example', # String | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, '$orderby=templateName desc' would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - clusterReference - extId 
  expand: 'expand_example', # String | A URL query parameter that allows clients to request related resources when a resource that satisfies a particular request is retrieved. Each expanded item is evaluated relative to the entity containing the property being expanded. Other query options can be applied to an expanded property by appending a semicolon-separated list of query options, enclosed in parentheses, to the property name. Permissible system query options are $filter, $select and $orderby. The following expansion keys are supported. - iscsiClient 
  select: 'select_example' # String | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - clusterReference - extId 
}

begin
  # List all the iSCSI attachments associated with the given Volume Group
  result = api_instance.list_external_iscsi_attachments_by_volume_group_id(volume_group_ext_id, opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_external_iscsi_attachments_by_volume_group_id: #{e}"
end
```

#### Using the list_external_iscsi_attachments_by_volume_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListExternalIscsiAttachmentsByVolumeGroupId200Response>, Integer, Hash)> list_external_iscsi_attachments_by_volume_group_id_with_http_info(volume_group_ext_id, opts)

```ruby
begin
  # List all the iSCSI attachments associated with the given Volume Group
  data, status_code, headers = api_instance.list_external_iscsi_attachments_by_volume_group_id_with_http_info(volume_group_ext_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListExternalIscsiAttachmentsByVolumeGroupId200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_external_iscsi_attachments_by_volume_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **page** | **Integer** | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results.  | [optional][default to 0] |
| **limit** | **Integer** | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set.  | [optional][default to 50] |
| **filter** | **String** | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter &#39;$filter&#x3D;name eq &#39;karbon-ntnx-1.0&#39; would filter the result on cluster name &#39;karbon-ntnx1.0&#39;, filter &#39;$filter&#x3D;startswith(name, &#39;C&#39;)&#39; would filter on cluster name starting with &#39;C&#39;. The filter can be applied to the following fields: - clusterReference - extId  | [optional] |
| **orderby** | **String** | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, &#39;$orderby&#x3D;templateName desc&#39; would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - clusterReference - extId  | [optional] |
| **expand** | **String** | A URL query parameter that allows clients to request related resources when a resource that satisfies a particular request is retrieved. Each expanded item is evaluated relative to the entity containing the property being expanded. Other query options can be applied to an expanded property by appending a semicolon-separated list of query options, enclosed in parentheses, to the property name. Permissible system query options are $filter, $select and $orderby. The following expansion keys are supported. - iscsiClient  | [optional] |
| **select** | **String** | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - clusterReference - extId  | [optional] |

### Return type

[**ListExternalIscsiAttachmentsByVolumeGroupId200Response**](ListExternalIscsiAttachmentsByVolumeGroupId200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vm_attachments_by_volume_group_id

> <ListVmAttachmentsByVolumeGroupId200Response> list_vm_attachments_by_volume_group_id(volume_group_ext_id, opts)

List all the VM attachments for a Volume Group

Query the list of VM attachments for a Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '1e3ab246-d742-4b38-b366-5972476daa98' # String | The external identifier of a Volume Group.
opts = {
  page: 56, # Integer | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results. 
  limit: 56, # Integer | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set. 
  filter: 'filter_example', # String | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter '$filter=name eq 'karbon-ntnx-1.0' would filter the result on cluster name 'karbon-ntnx1.0', filter '$filter=startswith(name, 'C')' would filter on cluster name starting with 'C'. The filter can be applied to the following fields: - extId 
  orderby: 'orderby_example' # String | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, '$orderby=templateName desc' would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - extId 
}

begin
  # List all the VM attachments for a Volume Group
  result = api_instance.list_vm_attachments_by_volume_group_id(volume_group_ext_id, opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_vm_attachments_by_volume_group_id: #{e}"
end
```

#### Using the list_vm_attachments_by_volume_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVmAttachmentsByVolumeGroupId200Response>, Integer, Hash)> list_vm_attachments_by_volume_group_id_with_http_info(volume_group_ext_id, opts)

```ruby
begin
  # List all the VM attachments for a Volume Group
  data, status_code, headers = api_instance.list_vm_attachments_by_volume_group_id_with_http_info(volume_group_ext_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVmAttachmentsByVolumeGroupId200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_vm_attachments_by_volume_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **page** | **Integer** | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results.  | [optional][default to 0] |
| **limit** | **Integer** | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set.  | [optional][default to 50] |
| **filter** | **String** | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter &#39;$filter&#x3D;name eq &#39;karbon-ntnx-1.0&#39; would filter the result on cluster name &#39;karbon-ntnx1.0&#39;, filter &#39;$filter&#x3D;startswith(name, &#39;C&#39;)&#39; would filter on cluster name starting with &#39;C&#39;. The filter can be applied to the following fields: - extId  | [optional] |
| **orderby** | **String** | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, &#39;$orderby&#x3D;templateName desc&#39; would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - extId  | [optional] |

### Return type

[**ListVmAttachmentsByVolumeGroupId200Response**](ListVmAttachmentsByVolumeGroupId200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_volume_disks_by_volume_group_id

> <ListVolumeDisksByVolumeGroupId200Response> list_volume_disks_by_volume_group_id(volume_group_ext_id, opts)

List all the Volume Disks attached to the Volume Group

Query the list of disks corresponding to a Volume Group identified by {volumeGroupExtId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '07c2da68-bb67-4535-9b2a-81504f6bb2e3' # String | The external identifier of a Volume Group.
opts = {
  page: 56, # Integer | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results. 
  limit: 56, # Integer | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set. 
  filter: 'filter_example', # String | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter '$filter=name eq 'karbon-ntnx-1.0' would filter the result on cluster name 'karbon-ntnx1.0', filter '$filter=startswith(name, 'C')' would filter on cluster name starting with 'C'. The filter can be applied to the following fields: - storageContainerId 
  orderby: 'orderby_example', # String | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, '$orderby=templateName desc' would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - diskSizeBytes 
  select: 'select_example' # String | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - extId - storageContainerId 
}

begin
  # List all the Volume Disks attached to the Volume Group
  result = api_instance.list_volume_disks_by_volume_group_id(volume_group_ext_id, opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_volume_disks_by_volume_group_id: #{e}"
end
```

#### Using the list_volume_disks_by_volume_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVolumeDisksByVolumeGroupId200Response>, Integer, Hash)> list_volume_disks_by_volume_group_id_with_http_info(volume_group_ext_id, opts)

```ruby
begin
  # List all the Volume Disks attached to the Volume Group
  data, status_code, headers = api_instance.list_volume_disks_by_volume_group_id_with_http_info(volume_group_ext_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVolumeDisksByVolumeGroupId200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_volume_disks_by_volume_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **page** | **Integer** | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results.  | [optional][default to 0] |
| **limit** | **Integer** | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set.  | [optional][default to 50] |
| **filter** | **String** | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter &#39;$filter&#x3D;name eq &#39;karbon-ntnx-1.0&#39; would filter the result on cluster name &#39;karbon-ntnx1.0&#39;, filter &#39;$filter&#x3D;startswith(name, &#39;C&#39;)&#39; would filter on cluster name starting with &#39;C&#39;. The filter can be applied to the following fields: - storageContainerId  | [optional] |
| **orderby** | **String** | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, &#39;$orderby&#x3D;templateName desc&#39; would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - diskSizeBytes  | [optional] |
| **select** | **String** | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - extId - storageContainerId  | [optional] |

### Return type

[**ListVolumeDisksByVolumeGroupId200Response**](ListVolumeDisksByVolumeGroupId200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_volume_groups

> <ListVolumeGroups200Response> list_volume_groups(opts)

List all the Volume Groups

Query the list of Volume Groups.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
opts = {
  page: 56, # Integer | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results. 
  limit: 56, # Integer | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set. 
  filter: 'filter_example', # String | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter '$filter=name eq 'karbon-ntnx-1.0' would filter the result on cluster name 'karbon-ntnx1.0', filter '$filter=startswith(name, 'C')' would filter on cluster name starting with 'C'. The filter can be applied to the following fields: - clusterReference - extId - name 
  orderby: 'orderby_example', # String | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, '$orderby=templateName desc' would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - clusterReference - extId - name 
  expand: 'expand_example', # String | A URL query parameter that allows clients to request related resources when a resource that satisfies a particular request is retrieved. Each expanded item is evaluated relative to the entity containing the property being expanded. Other query options can be applied to an expanded property by appending a semicolon-separated list of query options, enclosed in parentheses, to the property name. Permissible system query options are $filter, $select and $orderby. The following expansion keys are supported. - cluster - metadata 
  select: 'select_example' # String | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - clusterReference - extId - name 
}

begin
  # List all the Volume Groups
  result = api_instance.list_volume_groups(opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_volume_groups: #{e}"
end
```

#### Using the list_volume_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVolumeGroups200Response>, Integer, Hash)> list_volume_groups_with_http_info(opts)

```ruby
begin
  # List all the Volume Groups
  data, status_code, headers = api_instance.list_volume_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVolumeGroups200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->list_volume_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results.  | [optional][default to 0] |
| **limit** | **Integer** | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set.  | [optional][default to 50] |
| **filter** | **String** | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter &#39;$filter&#x3D;name eq &#39;karbon-ntnx-1.0&#39; would filter the result on cluster name &#39;karbon-ntnx1.0&#39;, filter &#39;$filter&#x3D;startswith(name, &#39;C&#39;)&#39; would filter on cluster name starting with &#39;C&#39;. The filter can be applied to the following fields: - clusterReference - extId - name  | [optional] |
| **orderby** | **String** | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, &#39;$orderby&#x3D;templateName desc&#39; would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - clusterReference - extId - name  | [optional] |
| **expand** | **String** | A URL query parameter that allows clients to request related resources when a resource that satisfies a particular request is retrieved. Each expanded item is evaluated relative to the entity containing the property being expanded. Other query options can be applied to an expanded property by appending a semicolon-separated list of query options, enclosed in parentheses, to the property name. Permissible system query options are $filter, $select and $orderby. The following expansion keys are supported. - cluster - metadata  | [optional] |
| **select** | **String** | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - clusterReference - extId - name  | [optional] |

### Return type

[**ListVolumeGroups200Response**](ListVolumeGroups200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revert_volume_group

> <RevertVolumeGroup202Response> revert_volume_group(ext_id, ntnx_request_id, volumes_v40_config_revert_spec)

Revert a Volume Group

Reverts a Volume Group identified by Volume Group external identifier. This API performs an in-place restore from a specified Volume Group recovery point.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = 'c3ed0675-f478-40ad-8d94-03a2b1fd0a74' # String | The external identifier of a Volume Group.
ntnx_request_id = 'f4d12837-55ea-4afd-9635-ac89477cfd6c' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_revert_spec = NutanixVolumes::VolumesV40ConfigRevertSpec.new({volume_group_recovery_point_ext_id: 'f0a47be2-aef7-4c0f-97f4-25b5e512a360'}) # VolumesV40ConfigRevertSpec | Specify the Volume Group recovery point ID to which the Volume Group would be reverted.

begin
  # Revert a Volume Group
  result = api_instance.revert_volume_group(ext_id, ntnx_request_id, volumes_v40_config_revert_spec)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->revert_volume_group: #{e}"
end
```

#### Using the revert_volume_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevertVolumeGroup202Response>, Integer, Hash)> revert_volume_group_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_revert_spec)

```ruby
begin
  # Revert a Volume Group
  data, status_code, headers = api_instance.revert_volume_group_with_http_info(ext_id, ntnx_request_id, volumes_v40_config_revert_spec)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevertVolumeGroup202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->revert_volume_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_revert_spec** | [**VolumesV40ConfigRevertSpec**](VolumesV40ConfigRevertSpec.md) | Specify the Volume Group recovery point ID to which the Volume Group would be reverted. |  |

### Return type

[**RevertVolumeGroup202Response**](RevertVolumeGroup202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_volume_disk_by_id

> <UpdateVolumeDiskById202Response> update_volume_disk_by_id(volume_group_ext_id, ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_disk)

Update a specified Volume Disk

Updates a specific Volume Disk identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
volume_group_ext_id = '06dcf5f0-a7cd-4f16-997a-63e99271fc7b' # String | The external identifier of a Volume Group.
ext_id = '2a9e95a1-a3df-45bf-ae47-88afb6583ac2' # String | The external identifier of a Volume Disk.
if_match = 'if_match_example' # String | The If-Match request header makes the request conditional. When not provided, the server will respond with  an HTTP-428 (Precondition Required) response code indicating that the server requires the request to be conditional. The server will allow the successful completion of PUT and PATCH operations, if the resource matches the ETag value returned to the response of a GET operation. If the conditional does not match, then an HTTP-412 (Precondition Failed) response will be returned.
ntnx_request_id = '3e4bbb78-e162-4e00-857d-9b8a5859bdc2' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_volume_disk = NutanixVolumes::VolumesV40ConfigVolumeDisk.new # VolumesV40ConfigVolumeDisk | A model that represents a Volume Disk associated with a Volume Group, supported by a backing file on DSF.

begin
  # Update a specified Volume Disk
  result = api_instance.update_volume_disk_by_id(volume_group_ext_id, ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_disk)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->update_volume_disk_by_id: #{e}"
end
```

#### Using the update_volume_disk_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateVolumeDiskById202Response>, Integer, Hash)> update_volume_disk_by_id_with_http_info(volume_group_ext_id, ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_disk)

```ruby
begin
  # Update a specified Volume Disk
  data, status_code, headers = api_instance.update_volume_disk_by_id_with_http_info(volume_group_ext_id, ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_disk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateVolumeDiskById202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->update_volume_disk_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_group_ext_id** | **String** | The external identifier of a Volume Group. |  |
| **ext_id** | **String** | The external identifier of a Volume Disk. |  |
| **if_match** | **String** | The If-Match request header makes the request conditional. When not provided, the server will respond with  an HTTP-428 (Precondition Required) response code indicating that the server requires the request to be conditional. The server will allow the successful completion of PUT and PATCH operations, if the resource matches the ETag value returned to the response of a GET operation. If the conditional does not match, then an HTTP-412 (Precondition Failed) response will be returned. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_volume_disk** | [**VolumesV40ConfigVolumeDisk**](VolumesV40ConfigVolumeDisk.md) | A model that represents a Volume Disk associated with a Volume Group, supported by a backing file on DSF. |  |

### Return type

[**UpdateVolumeDiskById202Response**](UpdateVolumeDiskById202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_volume_group_by_id

> <UpdateVolumeGroupById202Response> update_volume_group_by_id(ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_group)

Update details of a specified Volume Group

Updates details of a specific Volume Group identified by {extId}.

### Examples

```ruby
require 'time'
require 'nutanix_volumes'
# setup authorization
NutanixVolumes.configure do |config|
  # Configure API key authorization: apiKeyAuthScheme
  config.api_key['X-ntnx-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ntnx-api-key'] = 'Bearer'

  # Configure HTTP basic authorization: basicAuthScheme
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = NutanixVolumes::VolumeGroupsApi.new
ext_id = '2eb3971e-7d53-4f3d-b046-8cc9c0e72845' # String | The external identifier of a Volume Group.
if_match = 'if_match_example' # String | The If-Match request header makes the request conditional. When not provided, the server will respond with  an HTTP-428 (Precondition Required) response code indicating that the server requires the request to be conditional. The server will allow the successful completion of PUT and PATCH operations, if the resource matches the ETag value returned to the response of a GET operation. If the conditional does not match, then an HTTP-412 (Precondition Failed) response will be returned.
ntnx_request_id = '1dd2f8cf-772a-41ac-b3b9-fa41f7316a75' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_volume_group = NutanixVolumes::VolumesV40ConfigVolumeGroup.new # VolumesV40ConfigVolumeGroup | A model that represents a Volume Group resource.

begin
  # Update details of a specified Volume Group
  result = api_instance.update_volume_group_by_id(ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_group)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->update_volume_group_by_id: #{e}"
end
```

#### Using the update_volume_group_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateVolumeGroupById202Response>, Integer, Hash)> update_volume_group_by_id_with_http_info(ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_group)

```ruby
begin
  # Update details of a specified Volume Group
  data, status_code, headers = api_instance.update_volume_group_by_id_with_http_info(ext_id, if_match, ntnx_request_id, volumes_v40_config_volume_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateVolumeGroupById202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling VolumeGroupsApi->update_volume_group_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of a Volume Group. |  |
| **if_match** | **String** | The If-Match request header makes the request conditional. When not provided, the server will respond with  an HTTP-428 (Precondition Required) response code indicating that the server requires the request to be conditional. The server will allow the successful completion of PUT and PATCH operations, if the resource matches the ETag value returned to the response of a GET operation. If the conditional does not match, then an HTTP-412 (Precondition Failed) response will be returned. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_volume_group** | [**VolumesV40ConfigVolumeGroup**](VolumesV40ConfigVolumeGroup.md) | A model that represents a Volume Group resource. |  |

### Return type

[**UpdateVolumeGroupById202Response**](UpdateVolumeGroupById202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

