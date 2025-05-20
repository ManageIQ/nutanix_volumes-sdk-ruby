# NutanixVolumes::CommonV10ResponseApiResponseMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flags** | [**Array&lt;CommonV10ConfigFlag&gt;**](CommonV10ConfigFlag.md) | An array of flags that may indicate the status of the response. For example, a flag with the name &#39;isPaginated&#39; and value &#39;false&#39;, indicates that the response is not paginated.  | [optional] |
| **links** | [**Array&lt;CommonV10ResponseApiLink&gt;**](CommonV10ResponseApiLink.md) | An array of HATEOAS style links for the response that may also include pagination links for list operations.  | [optional] |
| **total_available_results** | **Integer** | The total number of entities that are available on the server for this type.  | [optional] |
| **messages** | [**Array&lt;CommonV10ConfigMessage&gt;**](CommonV10ConfigMessage.md) | Information, Warning or Error messages that might provide additional contextual information related to the operation.  | [optional] |
| **extra_info** | [**Array&lt;CommonV10ConfigKVPair&gt;**](CommonV10ConfigKVPair.md) | An array of entity-specific metadata  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ResponseApiResponseMetadata.new(
  flags: null,
  links: null,
  total_available_results: 17,
  messages: null,
  extra_info: null
)
```

