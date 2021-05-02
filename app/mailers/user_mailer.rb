class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.newsletter_confirmation.subject
  #
  def newsletter_confirmation(user)
    @user = user

    mail to: @user.email, subject: "Successfully subscribed to newsletter"
  end
end
