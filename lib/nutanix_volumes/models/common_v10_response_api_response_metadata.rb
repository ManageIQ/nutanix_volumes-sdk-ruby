=begin
#Nutanix Volumes APIs

#Configure volumes.

The version of the OpenAPI document: 4.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module NutanixVolumes
  # The metadata associated with an API response. This value is always present and minimally contains the self-link for the API request that produced this response. It also contains pagination data for the paginated requests. 
  class CommonV10ResponseApiResponseMetadata
    # An array of flags that may indicate the status of the response. For example, a flag with the name 'isPaginated' and value 'false', indicates that the response is not paginated. 
    attr_accessor :flags

    # An array of HATEOAS style links for the response that may also include pagination links for list operations. 
    attr_accessor :links

    # The total number of entities that are available on the server for this type. 
    attr_accessor :total_available_results

    # Information, Warning or Error messages that might provide additional contextual information related to the operation. 
    attr_accessor :messages

    # An array of entity-specific metadata 
    attr_accessor :extra_info

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'flags' => :'flags',
        :'links' => :'links',
        :'total_available_results' => :'totalAvailableResults',
        :'messages' => :'messages',
        :'extra_info' => :'extraInfo'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'flags' => :'Array<CommonV10ConfigFlag>',
        :'links' => :'Array<CommonV10ResponseApiLink>',
        :'total_available_results' => :'Integer',
        :'messages' => :'Array<CommonV10ConfigMessage>',
        :'extra_info' => :'Array<CommonV10ConfigKVPair>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NutanixVolumes::CommonV10ResponseApiResponseMetadata` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NutanixVolumes::CommonV10ResponseApiResponseMetadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'flags')
        if (value = attributes[:'flags']).is_a?(Array)
          self.flags = value
        end
      end

      if attributes.key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.key?(:'total_available_results')
        self.total_available_results = attributes[:'total_available_results']
      end

      if attributes.key?(:'messages')
        if (value = attributes[:'messages']).is_a?(Array)
          self.messages = value
        end
      end

      if attributes.key?(:'extra_info')
        if (value = attributes[:'extra_info']).is_a?(Array)
          self.extra_info = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@flags.nil? && @flags.length > 20
        invalid_properties.push('invalid value for "flags", number of items must be less than or equal to 20.')
      end

      if !@flags.nil? && @flags.length < 0
        invalid_properties.push('invalid value for "flags", number of items must be greater than or equal to 0.')
      end

      if !@links.nil? && @links.length > 20
        invalid_properties.push('invalid value for "links", number of items must be less than or equal to 20.')
      end

      if !@links.nil? && @links.length < 0
        invalid_properties.push('invalid value for "links", number of items must be greater than or equal to 0.')
      end

      if !@messages.nil? && @messages.length > 20
        invalid_properties.push('invalid value for "messages", number of items must be less than or equal to 20.')
      end

      if !@messages.nil? && @messages.length < 0
        invalid_properties.push('invalid value for "messages", number of items must be greater than or equal to 0.')
      end

      if !@extra_info.nil? && @extra_info.length > 20
        invalid_properties.push('invalid value for "extra_info", number of items must be less than or equal to 20.')
      end

      if !@extra_info.nil? && @extra_info.length < 0
        invalid_properties.push('invalid value for "extra_info", number of items must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@flags.nil? && @flags.length > 20
      return false if !@flags.nil? && @flags.length < 0
      return false if !@links.nil? && @links.length > 20
      return false if !@links.nil? && @links.length < 0
      return false if !@messages.nil? && @messages.length > 20
      return false if !@messages.nil? && @messages.length < 0
      return false if !@extra_info.nil? && @extra_info.length > 20
      return false if !@extra_info.nil? && @extra_info.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] flags Value to be assigned
    def flags=(flags)
      if flags.nil?
        fail ArgumentError, 'flags cannot be nil'
      end

      if flags.length > 20
        fail ArgumentError, 'invalid value for "flags", number of items must be less than or equal to 20.'
      end

      if flags.length < 0
        fail ArgumentError, 'invalid value for "flags", number of items must be greater than or equal to 0.'
      end

      @flags = flags
    end

    # Custom attribute writer method with validation
    # @param [Object] links Value to be assigned
    def links=(links)
      if links.nil?
        fail ArgumentError, 'links cannot be nil'
      end

      if links.length > 20
        fail ArgumentError, 'invalid value for "links", number of items must be less than or equal to 20.'
      end

      if links.length < 0
        fail ArgumentError, 'invalid value for "links", number of items must be greater than or equal to 0.'
      end

      @links = links
    end

    # Custom attribute writer method with validation
    # @param [Object] messages Value to be assigned
    def messages=(messages)
      if messages.nil?
        fail ArgumentError, 'messages cannot be nil'
      end

      if messages.length > 20
        fail ArgumentError, 'invalid value for "messages", number of items must be less than or equal to 20.'
      end

      if messages.length < 0
        fail ArgumentError, 'invalid value for "messages", number of items must be greater than or equal to 0.'
      end

      @messages = messages
    end

    # Custom attribute writer method with validation
    # @param [Object] extra_info Value to be assigned
    def extra_info=(extra_info)
      if extra_info.nil?
        fail ArgumentError, 'extra_info cannot be nil'
      end

      if extra_info.length > 20
        fail ArgumentError, 'invalid value for "extra_info", number of items must be less than or equal to 20.'
      end

      if extra_info.length < 0
        fail ArgumentError, 'invalid value for "extra_info", number of items must be greater than or equal to 0.'
      end

      @extra_info = extra_info
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          flags == o.flags &&
          links == o.links &&
          total_available_results == o.total_available_results &&
          messages == o.messages &&
          extra_info == o.extra_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [flags, links, total_available_results, messages, extra_info].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = NutanixVolumes.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
