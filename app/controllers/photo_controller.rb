class PhotosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photos_params)
    redirect_to place_path(@place)
    
  end


  private

  def photos_params
    params.require(:photo).permit(:caption, :picture)

  end
end