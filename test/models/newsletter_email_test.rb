require 'test_helper'

class NewsletterEmailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "newsletter_confirmation" do
    user = User(:one)
    email = NewsletterEmailTest.newsletter_confirmation(user)
    
    assert_emails 1 do
      email.delivery_now
    end
    
    assert_equal [user.email], email.to
    assert_equal ['from@example.com'], email.from
    assert_equal "Hello", email.subject
    
    
  end
end
