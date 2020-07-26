module ApplicationHelper
  def robohash_for(user, options = { size: 200 })
    username = user.username.downcase
    size = options[:size]
    robohash_url = "https://robohash.org/#{username}?size=#{size}x#{size}"
    image_tag(robohash_url, alt: user.username, class: "rounded mx-auto shadow bg-light d-block")
  end
end
