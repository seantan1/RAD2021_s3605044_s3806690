require 'test_helper'

class CustomersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:one)
  end
  
  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    path user_path(@user), params: {user: {name: "", email: "error@wrong", password: "too", password_confirmation: "short"}}
    assert_template 'users/edit'
  end
end
