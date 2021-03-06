module ApplicationHelper
  def gravatar_for(chef, option = { size: 100 })
    gravatar_id = Digest::MD5::hexdigest(chef.email.downcase)
    size = option[:size]
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: chef.chefname, class: "gravatar")
  end
end
