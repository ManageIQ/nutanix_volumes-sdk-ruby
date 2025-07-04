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
  # A model that represents a Volume Group resource.
  class VolumesV40ConfigVolumeGroup
    # A globally unique identifier that represents the tenant that owns this entity. The system automatically assigns it, and it and is immutable from an API consumer perspective (some use cases may cause this Id to change - For instance, a use case may require the transfer of ownership of the entity, but these cases are handled automatically on the server). 
    attr_accessor :tenant_id

    # A globally unique identifier of an instance that is suitable for external consumption. 
    attr_accessor :ext_id

    # A HATEOAS style link for the response.  Each link contains a user-friendly name identifying the link and an address for retrieving the particular resource. 
    attr_accessor :links

    # Volume Group name.
    attr_accessor :name

    # Volume Group description. This is an optional field.
    attr_accessor :description

    # Indicates whether to enable Volume Group load balancing for VM attachments. This cannot be enabled if there are iSCSI client attachments already associated with the Volume Group, and vice-versa. This is an optional field.
    attr_accessor :should_load_balance_vm_attachments

    attr_accessor :sharing_status

    # The specifications contain the target prefix for external clients as the value. This is an optional field.
    attr_accessor :target_prefix

    # Name of the external client target that will be visible and accessible to the client. This is an optional field.
    attr_accessor :target_name

    attr_accessor :enabled_authentications

    attr_accessor :iscsi_features

    # Service/user who created this Volume Group. This is an optional field.
    attr_accessor :created_by

    # The UUID of the cluster that will host the Volume Group. This is a mandatory field for creating a Volume Group on Prism Central.
    attr_accessor :cluster_reference

    attr_accessor :storage_features

    attr_accessor :usage_type

    attr_accessor :attachment_type

    attr_accessor :protocol

    # Indicates whether the Volume Group is meant to be hidden or not. This is an optional field. If omitted, the VG will not be hidden.
    attr_accessor :is_hidden

    # A list of Volume Disks to be attached to the Volume Group.
    attr_accessor :disks

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tenant_id' => :'tenantId',
        :'ext_id' => :'extId',
        :'links' => :'links',
        :'name' => :'name',
        :'description' => :'description',
        :'should_load_balance_vm_attachments' => :'shouldLoadBalanceVmAttachments',
        :'sharing_status' => :'sharingStatus',
        :'target_prefix' => :'targetPrefix',
        :'target_name' => :'targetName',
        :'enabled_authentications' => :'enabledAuthentications',
        :'iscsi_features' => :'iscsiFeatures',
        :'created_by' => :'createdBy',
        :'cluster_reference' => :'clusterReference',
        :'storage_features' => :'storageFeatures',
        :'usage_type' => :'usageType',
        :'attachment_type' => :'attachmentType',
        :'protocol' => :'protocol',
        :'is_hidden' => :'isHidden',
        :'disks' => :'disks'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tenant_id' => :'String',
        :'ext_id' => :'String',
        :'links' => :'Array<CommonV10ResponseApiLink>',
        :'name' => :'String',
        :'description' => :'String',
        :'should_load_balance_vm_attachments' => :'Boolean',
        :'sharing_status' => :'VolumesV40ConfigSharingStatus',
        :'target_prefix' => :'String',
        :'target_name' => :'String',
        :'enabled_authentications' => :'VolumesV40ConfigAuthenticationType',
        :'iscsi_features' => :'VolumesV40ConfigIscsiFeatures',
        :'created_by' => :'String',
        :'cluster_reference' => :'String',
        :'storage_features' => :'VolumesV40ConfigStorageFeatures',
        :'usage_type' => :'VolumesV40ConfigUsageType',
        :'attachment_type' => :'VolumesV40ConfigAttachmentType',
        :'protocol' => :'VolumesV40ConfigProtocol',
        :'is_hidden' => :'Boolean',
        :'disks' => :'Array<VolumesV40ConfigVolumeDisk>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ext_id',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CommonV10ResponseExternalizableAbstractModel'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NutanixVolumes::VolumesV40ConfigVolumeGroup` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NutanixVolumes::VolumesV40ConfigVolumeGroup`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'ext_id')
        self.ext_id = attributes[:'ext_id']
      end

      if attributes.key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'should_load_balance_vm_attachments')
        self.should_load_balance_vm_attachments = attributes[:'should_load_balance_vm_attachments']
      else
        self.should_load_balance_vm_attachments = false
      end

      if attributes.key?(:'sharing_status')
        self.sharing_status = attributes[:'sharing_status']
      end

      if attributes.key?(:'target_prefix')
        self.target_prefix = attributes[:'target_prefix']
      end

      if attributes.key?(:'target_name')
        self.target_name = attributes[:'target_name']
      end

      if attributes.key?(:'enabled_authentications')
        self.enabled_authentications = attributes[:'enabled_authentications']
      end

      if attributes.key?(:'iscsi_features')
        self.iscsi_features = attributes[:'iscsi_features']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'cluster_reference')
        self.cluster_reference = attributes[:'cluster_reference']
      end

      if attributes.key?(:'storage_features')
        self.storage_features = attributes[:'storage_features']
      end

      if attributes.key?(:'usage_type')
        self.usage_type = attributes[:'usage_type']
      end

      if attributes.key?(:'attachment_type')
        self.attachment_type = attributes[:'attachment_type']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'is_hidden')
        self.is_hidden = attributes[:'is_hidden']
      else
        self.is_hidden = false
      end

      if attributes.key?(:'disks')
        if (value = attributes[:'disks']).is_a?(Array)
          self.disks = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      if !@tenant_id.nil? && @tenant_id !~ pattern
        invalid_properties.push("invalid value for \"tenant_id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      if !@ext_id.nil? && @ext_id !~ pattern
        invalid_properties.push("invalid value for \"ext_id\", must conform to the pattern #{pattern}.")
      end

      if !@links.nil? && @links.length > 20
        invalid_properties.push('invalid value for "links", number of items must be less than or equal to 20.')
      end

      if !@links.nil? && @links.length < 0
        invalid_properties.push('invalid value for "links", number of items must be greater than or equal to 0.')
      end

      if !@name.nil? && @name.to_s.length > 256
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 256.')
      end

      if !@description.nil? && @description.to_s.length > 1000
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 1000.')
      end

      if !@target_prefix.nil? && @target_prefix.to_s.length > 512
        invalid_properties.push('invalid value for "target_prefix", the character length must be smaller than or equal to 512.')
      end

      pattern = Regexp.new(/^[\da-zA-Z:\.\-]+$/)
      if !@target_prefix.nil? && @target_prefix !~ pattern
        invalid_properties.push("invalid value for \"target_prefix\", must conform to the pattern #{pattern}.")
      end

      if !@target_name.nil? && @target_name.to_s.length > 512
        invalid_properties.push('invalid value for "target_name", the character length must be smaller than or equal to 512.')
      end

      if !@target_name.nil? && @target_name.to_s.length < 12
        invalid_properties.push('invalid value for "target_name", the character length must be great than or equal to 12.')
      end

      if !@created_by.nil? && @created_by.to_s.length > 512
        invalid_properties.push('invalid value for "created_by", the character length must be smaller than or equal to 512.')
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      if !@cluster_reference.nil? && @cluster_reference !~ pattern
        invalid_properties.push("invalid value for \"cluster_reference\", must conform to the pattern #{pattern}.")
      end

      if !@disks.nil? && @disks.length > 10
        invalid_properties.push('invalid value for "disks", number of items must be less than or equal to 10.')
      end

      if !@disks.nil? && @disks.length < 1
        invalid_properties.push('invalid value for "disks", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@tenant_id.nil? && @tenant_id !~ Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      return false if !@ext_id.nil? && @ext_id !~ Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      return false if !@links.nil? && @links.length > 20
      return false if !@links.nil? && @links.length < 0
      return false if !@name.nil? && @name.to_s.length > 256
      return false if !@description.nil? && @description.to_s.length > 1000
      return false if !@target_prefix.nil? && @target_prefix.to_s.length > 512
      return false if !@target_prefix.nil? && @target_prefix !~ Regexp.new(/^[\da-zA-Z:\.\-]+$/)
      return false if !@target_name.nil? && @target_name.to_s.length > 512
      return false if !@target_name.nil? && @target_name.to_s.length < 12
      return false if !@created_by.nil? && @created_by.to_s.length > 512
      return false if !@cluster_reference.nil? && @cluster_reference !~ Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      return false if !@disks.nil? && @disks.length > 10
      return false if !@disks.nil? && @disks.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] tenant_id Value to be assigned
    def tenant_id=(tenant_id)
      if tenant_id.nil?
        fail ArgumentError, 'tenant_id cannot be nil'
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      if tenant_id !~ pattern
        fail ArgumentError, "invalid value for \"tenant_id\", must conform to the pattern #{pattern}."
      end

      @tenant_id = tenant_id
    end

    # Custom attribute writer method with validation
    # @param [Object] ext_id Value to be assigned
    def ext_id=(ext_id)
      pattern = Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      if !ext_id.nil? && ext_id !~ pattern
        fail ArgumentError, "invalid value for \"ext_id\", must conform to the pattern #{pattern}."
      end

      @ext_id = ext_id
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
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 256
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 256.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 1000
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 1000.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] target_prefix Value to be assigned
    def target_prefix=(target_prefix)
      if target_prefix.nil?
        fail ArgumentError, 'target_prefix cannot be nil'
      end

      if target_prefix.to_s.length > 512
        fail ArgumentError, 'invalid value for "target_prefix", the character length must be smaller than or equal to 512.'
      end

      pattern = Regexp.new(/^[\da-zA-Z:\.\-]+$/)
      if target_prefix !~ pattern
        fail ArgumentError, "invalid value for \"target_prefix\", must conform to the pattern #{pattern}."
      end

      @target_prefix = target_prefix
    end

    # Custom attribute writer method with validation
    # @param [Object] target_name Value to be assigned
    def target_name=(target_name)
      if target_name.nil?
        fail ArgumentError, 'target_name cannot be nil'
      end

      if target_name.to_s.length > 512
        fail ArgumentError, 'invalid value for "target_name", the character length must be smaller than or equal to 512.'
      end

      if target_name.to_s.length < 12
        fail ArgumentError, 'invalid value for "target_name", the character length must be great than or equal to 12.'
      end

      @target_name = target_name
    end

    # Custom attribute writer method with validation
    # @param [Object] created_by Value to be assigned
    def created_by=(created_by)
      if created_by.nil?
        fail ArgumentError, 'created_by cannot be nil'
      end

      if created_by.to_s.length > 512
        fail ArgumentError, 'invalid value for "created_by", the character length must be smaller than or equal to 512.'
      end

      @created_by = created_by
    end

    # Custom attribute writer method with validation
    # @param [Object] cluster_reference Value to be assigned
    def cluster_reference=(cluster_reference)
      if cluster_reference.nil?
        fail ArgumentError, 'cluster_reference cannot be nil'
      end

      pattern = Regexp.new(/^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$/)
      if cluster_reference !~ pattern
        fail ArgumentError, "invalid value for \"cluster_reference\", must conform to the pattern #{pattern}."
      end

      @cluster_reference = cluster_reference
    end

    # Custom attribute writer method with validation
    # @param [Object] disks Value to be assigned
    def disks=(disks)
      if disks.nil?
        fail ArgumentError, 'disks cannot be nil'
      end

      if disks.length > 10
        fail ArgumentError, 'invalid value for "disks", number of items must be less than or equal to 10.'
      end

      if disks.length < 1
        fail ArgumentError, 'invalid value for "disks", number of items must be greater than or equal to 1.'
      end

      @disks = disks
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tenant_id == o.tenant_id &&
          ext_id == o.ext_id &&
          links == o.links &&
          name == o.name &&
          description == o.description &&
          should_load_balance_vm_attachments == o.should_load_balance_vm_attachments &&
          sharing_status == o.sharing_status &&
          target_prefix == o.target_prefix &&
          target_name == o.target_name &&
          enabled_authentications == o.enabled_authentications &&
          iscsi_features == o.iscsi_features &&
          created_by == o.created_by &&
          cluster_reference == o.cluster_reference &&
          storage_features == o.storage_features &&
          usage_type == o.usage_type &&
          attachment_type == o.attachment_type &&
          protocol == o.protocol &&
          is_hidden == o.is_hidden &&
          disks == o.disks
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tenant_id, ext_id, links, name, description, should_load_balance_vm_attachments, sharing_status, target_prefix, target_name, enabled_authentications, iscsi_features, created_by, cluster_reference, storage_features, usage_type, attachment_type, protocol, is_hidden, disks].hash
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
