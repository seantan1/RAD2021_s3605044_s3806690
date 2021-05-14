module UsersHelper
  
  # def gravatar_for(users, size: 50)
  # gravatar_id=Digest::MD5::hexdigest(users.email.downcase)
  # gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}"
  # image_tag(gravatar_url,alt:users.name,class:"gravatar")
  # end
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar rounded-circle", width: 500)
  end
  
end
