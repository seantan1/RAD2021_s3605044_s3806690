require 'test_helper'

class UserTest < ActiveSupport::TestCase
   

  def setup
    @user = User.new(name: "test10", email: "test10@hotmail.com")
  end 
  
  test "name should be present" do
    @user.name = "  "
    assert_not @user.valid?
  end
  
  test "username should not be too long" do 
    @user.name = "x" * 26
    assert @user.valid?
  end
   
  # test "should be valid" do
  #   @user.name = "test"
  #   assert @user.valid?
  # end
end
