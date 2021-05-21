require 'test_helper'

class UserTest < ActiveSupport::TestCase
   

  def setup
    @user = User.new(name: "", email: "test10@hotmail.com")
  end 
  
  test "name should be present" do
    @user.name = "  "
    assert_not @user.valid?
  end
  
  test "username should not be too long" do 
    @user.name = "x" * 26
    assert_not @user.valid?
  end
  
  
   
  # test "should be valid" do
  #   @user.name = "test"
  #   assert @user.valid?
  # end
end
