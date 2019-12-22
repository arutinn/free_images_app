class FavoritePhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.favorite_photos.create(photo_id: params["photo_id"])
  end
end
