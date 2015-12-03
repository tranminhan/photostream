class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def callback
    # 736d43765b054423ac4f460b21b0be4b
    response = Instagram.get_access_token(params[:code], :redirect_uri => "http://localhost:3000/photos/callback")
    render text: "#{response.access_token}"  
  end

  def auth
    redirect_to Instagram.authorize_url(:redirect_uri => "http://localhost:3000/photos/callback")
  end 

  def access
    
  end 
end
