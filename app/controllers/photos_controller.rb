# frozen_string_literal: true

class PhotosController < ApplicationController
	before_action :find_photo, only: [:show, :edit, :update, :destroy]
  def index
    @photos = Photo.all
    #render plain: @photos.map { |i| "#{i.name}: #{i.description}"}
    #render :index
    end

  def show
    @photo
    # render plain: 'Page not found', status: 404 unless @photos
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to @photo
    #render 'new'
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
    render file: "public/404.html", status: 404
  end

  def render_403
    render file: "public/403.html", status: 404
  end

end