# NutanixVolumes::IscsiClientsApi

All URIs are relative to *https://:9440/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_iscsi_client_by_id**](IscsiClientsApi.md#get_iscsi_client_by_id) | **GET** /volumes/v4.0/config/iscsi-clients/{extId} | Fetch an iSCSI client details |
| [**list_iscsi_clients**](IscsiClientsApi.md#list_iscsi_clients) | **GET** /volumes/v4.0/config/iscsi-clients | List all the iSCSI clients |
| [**update_iscsi_client_by_id**](IscsiClientsApi.md#update_iscsi_client_by_id) | **PUT** /volumes/v4.0/config/iscsi-clients/{extId} | Update an iSCSI client |


## get_iscsi_client_by_id

> <GetIscsiClientById200Response> get_iscsi_client_by_id(ext_id)

Fetch an iSCSI client details

Fetches the iSCSI client details identified by {extId}.

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

api_instance = NutanixVolumes::IscsiClientsApi.new
ext_id = 'be0e4630-23da-4b9c-a76b-f24fd64b46b6' # String | The external identifier of an iSCSI client.

begin
  # Fetch an iSCSI client details
  result = api_instance.get_iscsi_client_by_id(ext_id)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling IscsiClientsApi->get_iscsi_client_by_id: #{e}"
end
```

#### Using the get_iscsi_client_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIscsiClientById200Response>, Integer, Hash)> get_iscsi_client_by_id_with_http_info(ext_id)

```ruby
begin
  # Fetch an iSCSI client details
  data, status_code, headers = api_instance.get_iscsi_client_by_id_with_http_info(ext_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIscsiClientById200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling IscsiClientsApi->get_iscsi_client_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of an iSCSI client. |  |

### Return type

[**GetIscsiClientById200Response**](GetIscsiClientById200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_iscsi_clients

> <ListIscsiClients200Response> list_iscsi_clients(opts)

List all the iSCSI clients

Fetches the list of iSCSI clients.

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

api_instance = NutanixVolumes::IscsiClientsApi.new
opts = {
  page: 56, # Integer | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results. 
  limit: 56, # Integer | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set. 
  filter: 'filter_example', # String | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter '$filter=name eq 'karbon-ntnx-1.0' would filter the result on cluster name 'karbon-ntnx1.0', filter '$filter=startswith(name, 'C')' would filter on cluster name starting with 'C'. The filter can be applied to the following fields: - clusterReference - extId 
  orderby: 'orderby_example', # String | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, '$orderby=templateName desc' would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - clusterReference - extId 
  expand: 'expand_example', # String | A URL query parameter that allows clients to request related resources when a resource that satisfies a particular request is retrieved. Each expanded item is evaluated relative to the entity containing the property being expanded. Other query options can be applied to an expanded property by appending a semicolon-separated list of query options, enclosed in parentheses, to the property name. Permissible system query options are $filter, $select and $orderby. The following expansion keys are supported. - cluster 
  select: 'select_example' # String | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - clusterReference - extId 
}

begin
  # List all the iSCSI clients
  result = api_instance.list_iscsi_clients(opts)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling IscsiClientsApi->list_iscsi_clients: #{e}"
end
```

#### Using the list_iscsi_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIscsiClients200Response>, Integer, Hash)> list_iscsi_clients_with_http_info(opts)

```ruby
begin
  # List all the iSCSI clients
  data, status_code, headers = api_instance.list_iscsi_clients_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIscsiClients200Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling IscsiClientsApi->list_iscsi_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | A URL query parameter that specifies the page number of the result set. It must be a positive integer between 0 and the maximum number of pages that are available for that resource. Any number out of this range might lead to no results.  | [optional][default to 0] |
| **limit** | **Integer** | A URL query parameter that specifies the total number of records returned in the result set.  Must be a positive integer between 1 and 100. Any number out of this range will lead to a validation error. If the limit is not provided, a default value of 50 records will be returned in the result set.  | [optional][default to 50] |
| **filter** | **String** | A URL query parameter that allows clients to filter a collection of resources. The expression specified with $filter is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response. Expression specified with the $filter must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. For example, filter &#39;$filter&#x3D;name eq &#39;karbon-ntnx-1.0&#39; would filter the result on cluster name &#39;karbon-ntnx1.0&#39;, filter &#39;$filter&#x3D;startswith(name, &#39;C&#39;)&#39; would filter on cluster name starting with &#39;C&#39;. The filter can be applied to the following fields: - clusterReference - extId  | [optional] |
| **orderby** | **String** | A URL query parameter that allows clients to specify the sort criteria for the returned list of objects. Resources can be sorted in ascending order using asc or descending order using desc. If asc or desc are not specified, the resources will be sorted in ascending order by default. For example, &#39;$orderby&#x3D;templateName desc&#39; would get all templates sorted by templateName in descending order. The orderby can be applied to the following fields: - clusterReference - extId  | [optional] |
| **expand** | **String** | A URL query parameter that allows clients to request related resources when a resource that satisfies a particular request is retrieved. Each expanded item is evaluated relative to the entity containing the property being expanded. Other query options can be applied to an expanded property by appending a semicolon-separated list of query options, enclosed in parentheses, to the property name. Permissible system query options are $filter, $select and $orderby. The following expansion keys are supported. - cluster  | [optional] |
| **select** | **String** | A URL query parameter that allows clients to request a specific set of properties for each entity or complex type. Expression specified with the $select must conform to the [OData V4.01](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html) URL conventions. If a $select expression consists of a single select item that is an asterisk (i.e., *), then all properties on the matching resource will be returned. - clusterReference - extId  | [optional] |

### Return type

[**ListIscsiClients200Response**](ListIscsiClients200Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_iscsi_client_by_id

> <UpdateIscsiClientById202Response> update_iscsi_client_by_id(ext_id, if_match, ntnx_request_id, volumes_v40_config_iscsi_client)

Update an iSCSI client

Modifies the details of an existing iSCSI client configuration identified by {extId}.

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

api_instance = NutanixVolumes::IscsiClientsApi.new
ext_id = '6ac8e14f-f0ca-432e-9c59-5099b634d992' # String | The external identifier of an iSCSI client.
if_match = 'if_match_example' # String | The If-Match request header makes the request conditional. When not provided, the server will respond with  an HTTP-428 (Precondition Required) response code indicating that the server requires the request to be conditional. The server will allow the successful completion of PUT and PATCH operations, if the resource matches the ETag value returned to the response of a GET operation. If the conditional does not match, then an HTTP-412 (Precondition Failed) response will be returned.
ntnx_request_id = 'fcdfa6ab-d3ec-496f-a303-6ee6127c2a49' # String | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request. 
volumes_v40_config_iscsi_client = NutanixVolumes::VolumesV40ConfigIscsiClient.new # VolumesV40ConfigIscsiClient | A model that represents an iSCSI client that can be associated with a Volume Group as an external attachment.

begin
  # Update an iSCSI client
  result = api_instance.update_iscsi_client_by_id(ext_id, if_match, ntnx_request_id, volumes_v40_config_iscsi_client)
  p result
rescue NutanixVolumes::ApiError => e
  puts "Error when calling IscsiClientsApi->update_iscsi_client_by_id: #{e}"
end
```

#### Using the update_iscsi_client_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateIscsiClientById202Response>, Integer, Hash)> update_iscsi_client_by_id_with_http_info(ext_id, if_match, ntnx_request_id, volumes_v40_config_iscsi_client)

```ruby
begin
  # Update an iSCSI client
  data, status_code, headers = api_instance.update_iscsi_client_by_id_with_http_info(ext_id, if_match, ntnx_request_id, volumes_v40_config_iscsi_client)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateIscsiClientById202Response>
rescue NutanixVolumes::ApiError => e
  puts "Error when calling IscsiClientsApi->update_iscsi_client_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ext_id** | **String** | The external identifier of an iSCSI client. |  |
| **if_match** | **String** | The If-Match request header makes the request conditional. When not provided, the server will respond with  an HTTP-428 (Precondition Required) response code indicating that the server requires the request to be conditional. The server will allow the successful completion of PUT and PATCH operations, if the resource matches the ETag value returned to the response of a GET operation. If the conditional does not match, then an HTTP-412 (Precondition Failed) response will be returned. |  |
| **ntnx_request_id** | **String** | A unique identifier that is associated with each request. The provided value must be opaque and preferably in Universal Unique Identifier (UUID) format. This identifier is also used as an idempotence token for safely retrying requests in case of network errors. All the supported Nutanix API clients add this auto-generated request identifier to each request.  |  |
| **volumes_v40_config_iscsi_client** | [**VolumesV40ConfigIscsiClient**](VolumesV40ConfigIscsiClient.md) | A model that represents an iSCSI client that can be associated with a Volume Group as an external attachment. |  |

### Return type

[**UpdateIscsiClientById202Response**](UpdateIscsiClientById202Response.md)

### Authorization

[apiKeyAuthScheme](../README.md#apiKeyAuthScheme), [basicAuthScheme](../README.md#basicAuthScheme)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

