class PhotosController < ApplicationController
  before_action :find_photo, only: %i[show edit update destroy search_photo_by_id]

  def index
    @photos = Photo.all
  end

  def show
    @photo
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to @photo
    # render 'new'
  end

  def destroy
    @photo.destroy
    redirect_to action: 'index'
  end

  private

  def photo_params
    params.require(:photo).permit(:name, :size, :quantity)
  end

  def find_photo
    @photo = Photo.where(id: params[:id]).first
    render_404 unless @photo
  end

  def render_404
    render file: 'public/404.html', status: 404
  end

  def render_403
    render file: 'public/403.html', status: 404
  end
end
