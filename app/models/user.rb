class User < ApplicationRecord
  before_create { generate_token(:auth_token) }
  
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
  
  # def self.twitter_find_or_create_from_auth_hash(auth_hash)
  #   user = where(name: auth_hash.info.nickname).first_or_create
  #   user.update(
  #     name: auth_hash.info.nickname,
  #     token: auth_hash.credentials.token,
  #     secret: auth_hash.credentials.secret
  #   )
  #   user
  # end
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    PasswordMailer.password_reset(self).deliver
  end
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
