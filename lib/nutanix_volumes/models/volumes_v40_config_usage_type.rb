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
  class VolumesV40ConfigUsageType
    USER = "USER".freeze
    INTERNAL = "INTERNAL".freeze
    TEMPORARY = "TEMPORARY".freeze
    BACKUP_TARGET = "BACKUP_TARGET".freeze
    _UNKNOWN = "$UNKNOWN".freeze
    _REDACTED = "$REDACTED".freeze

    def self.all_vars
      @all_vars ||= [USER, INTERNAL, TEMPORARY, BACKUP_TARGET, _UNKNOWN, _REDACTED].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if VolumesV40ConfigUsageType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #VolumesV40ConfigUsageType"
    end
  end
end
