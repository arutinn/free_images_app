# frozen_string_literal: true

class PhotosController < ApplicationController
  def index
    @photo = Photo
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
    render 'new'
  end

  private

  def photo_params
    params.require(:photo).permit(:name, :description)
  end
end
