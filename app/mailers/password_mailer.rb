class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.password_reset.subject
  #
  
  def password_reset(user)
    @user = user
    # mail :to => @user.email, :subject => "Password Reset"
    mail( :to => @user.email, :subject => 'Password Reset' )

  end
end
