require 'test_helper'

class ActiveGuidTest < ActiveSupport::TestCase
  test "user has a GUID after validation" do
    u = User.new
    
    assert !u.guid?
    
    u.valid?
    
    assert u.guid?
  end
  
  test "GUID returns automagically" do
    u = User.new
    u.valid?
    
    u.guid = nil
    
    assert u.valid?
    assert u.guid?
  end
end
