require 'test_helper'

class ActiveGuidTest < ActiveSupport::TestCase
  test "user has a GUID" do
    u = User.new
    assert u.guid?
  end
  
  test "GUID is not accessible" do
    u = User.new guid: "test"
    assert_not_equal "test", u.guid
  end
end
