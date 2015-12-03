namespace :ps do
  
  desc "TODO"
  task import: :environment do
    access_token = "44250506.054aea8.84beac3c73a2434a8cbe468a743715db"

    client = Instagram.client(:access_token => access_token)
    # for media_item in client.media_popular
    #   p media_item.images.thumbnail.url
    # end
    for user in client.user_search("instagram")
      p user.profile_picture
      # p media_item.images.thumbnail.url
    end
  end

end
