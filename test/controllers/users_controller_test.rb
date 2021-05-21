require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    # @user = users(:one)
    @user = User.new(name: "Clinton", email: "Clintonjobhotmail.co.uk", password: "12345678", password_confirmation: "12345678")
  end
  
  
  test "Name should be present" do
    @user.name = "Clinton"
    assert @user.valid?
  end
  
  test "Password constraint test" do
    @user.password = "1"
    assert_not @user.valid?
  end
  
  test "Good emails should pass" do
    valid_emails= %w[joe@apple.com TEST@EXP.ORG joe_s@a-School.net alex.smith@topshop.bizdon+z@136.co]
    valid_emails.each do |email|
    @user.email=email
    assert @user.valid?,"#{email.inspect} should be valid"
    end
  end
  
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "cLdf@hOtmail.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
    end
  
  test "Invalid emails should be rejected" do
    invalid_emails = %w[joe@apple,.,,com TEST@@EXP.ORG joe_s@a_School.netalex.smith@topshop.biz don+z@13+6.co]
    invalid_emails.each do |email|
      @user.email = email
      assert_not @user.valid?, "#{email.inspect} should be invalid"
    end
  end
  
  test "email addresses should be unique" do
    clone = @user.dup
    clone.email = @user.email.upcase
    @user.save
    assert_not clone.valid?
  end
  
end
