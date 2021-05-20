# Preview all emails at http://localhost:3000/rails/mailers/password_mailer
class PasswordMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/password_mailer/password_reset
  def password_reset
    user = User
    PasswordMailer.password_reset(user)
  end
end
