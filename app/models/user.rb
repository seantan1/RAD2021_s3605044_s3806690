class User < ApplicationRecord
  has_secure_password
  
  def self.authenticate(input_email, input_password)
    user = find_by_email(input_email)
    if user && user.password_digest == BCrypt::Engine.hash_secret(input_password, user.password_digest)
      user
    else
      nil
    end
  end
end
