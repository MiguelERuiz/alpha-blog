module ApplicationHelper
  def robohash_for(user, options = { set: 1 })
    username = user.username.downcase
    set = options[:set]
    robohash_url = "https://robohash.org/#{username}?set=set#{set}"
    image_tag(robohash_url, alt: user.username, class: "rounded mx-auto shadow bg-light d-block")
  end
end
