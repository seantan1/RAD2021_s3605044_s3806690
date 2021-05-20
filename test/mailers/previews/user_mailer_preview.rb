# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/newsletter_confirmation
  def newsletter_confirmation
    user = User.new(email: "test@test.com")
    
    UserMailer.newsletter_confirmation(user)
  end

end
