require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    # @user = users(:one)
    @user = User.new(name: "Clinton", email: "Clintonjob@hotmail.co.uk", password: "1", password_confirmation: "1")
  end
  
  test "Password Constraint" do
    @user.password = "123"
    assert_not @user.valid?
  end 
  
end
