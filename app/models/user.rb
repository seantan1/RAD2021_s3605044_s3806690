class User < ApplicationRecord
  # validates:name, presence:true
  # EMAIL_PATTERN = /\A\S+@.+\.\S+\z/
  
  # validates :email, presence: true, format: { with: EMAIL_PATTERN}
  # validates:name,presence:true,length:{maximum:25}
  
  before_create { generate_token(:auth_token) }
  before_save{self.email=email.downcase }
  
  has_secure_password
  
  has_many :cart_products
  
  # authenticate user email and password if it matches the hash password in active record
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
  
  # send user newsletter through email
  def send_newsletter_email
    UserMailer.newsletter_confirmation(self).deliver_later
  end
  
  # send user reset password email
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
