class User < ApplicationRecord
  has_secure_password
  
  has_many :cart_products
  
  def self.authenticate(input_email, input_password)
    user = find_by_email(input_email)
    if user && user.password_digest == BCrypt::Engine.hash_secret(input_password, user.password_digest)
      user
    else
      nil
    end
  end
  
  def self.twitter_find_or_create_from_auth_hash(auth_hash)
    user = where(name: auth_hash.info.nickname).first_or_create
    user.update(
      name: auth_hash.info.nickname,
      # profile_image: auth_hash.info.image,
      # token: auth_hash.credentials.token,
      # secret: auth_hash.credentials.secret
    )
    user
  end
  
def send_password_reset
  generate_token(:password_reset_token)
  self.password_reset_sent_at = Time.zone.now
  save!
  UserMailer.forgot_password(self).deliver# This sends an e-mail with a link for the user to reset the password
end
# This generates a random password reset token for the user
def generate_token(column)
  begin
    self[column] = SecureRandom.urlsafe_base64
  end while User.exists?(column => self[column])
end



end
