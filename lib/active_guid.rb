require 'active_support/concern'
require 'uuidtools'

module ActiveGuid
  extend ActiveSupport::Concern
  
  included do
    attr_protected    :guid
    before_validation :generate_guid
    validates         :guid, presence: true
  end
  
  private
  
  def generate_guid
    self.guid = UUIDTools::UUID.random_create.to_s unless guid?
  end
end
