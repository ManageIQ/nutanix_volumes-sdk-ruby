# NutanixVolumes::CommonV10ResponseApiLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **href** | **String** | The URL at which the entity described by the link can be accessed.  | [optional] |
| **rel** | **String** | A name that identifies the relationship of the link to the object that is returned by the URL.  The unique value of \&quot;self\&quot; identifies the URL for the object.  | [optional] |

## Example

```ruby
require 'nutanix_volumes'

instance = NutanixVolumes::CommonV10ResponseApiLink.new(
  href: null,
  rel: null
)
```

