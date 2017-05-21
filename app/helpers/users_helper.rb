module UsersHelper
  def gravatar_url(user, oputions = {size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = oputions[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
end
