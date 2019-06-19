class PlacesController < ApplicationController

  def index
    @place = Place.all.page(params[:page]).per_page(10)
  end

end
