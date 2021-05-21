require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  
  test "newsletter_confirmation" do
    user = users(:one)
    mail = UserMailer.newsletter_confirmation(user)
    assert_equal "Successfully subscribed to newsletter", mail.subject
    assert_equal ["test@gmail.com"], mail.to
    assert_equal ["phamousdetailing@gmail.com"], mail.from
    assert_match "Thank you for signing up to our newsletter. Stay tuned for upcoming events!", mail.body.encoded
  end
     
 end
