require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    # @user = users(:one)
    @user = User.new(name: "Clinton", email: "Clintonjobhotmail.co.uk", password: "1", password_confirmation: "1")
  end
  
  test "Password Constraint" do
    @user.password = ""
    
    assert @user.valid?
  end 
  
  test "Name should be present" do
    @user.name = "Clinton"
    assert @user.valid?
  end
  
end
