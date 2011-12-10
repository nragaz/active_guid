require 'active_support/concern'
require 'default_value_for'
require 'uuidtools'

module ActiveGuid
  extend ActiveSupport::Concern
  
  included do
    attr_protected :guid
    
    default_value_for :guid do
      UUIDTools::UUID.random_create.to_s
    end
    
    validates :guid, presence: true
  end
end
