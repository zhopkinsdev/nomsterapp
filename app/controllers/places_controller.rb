class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @place = Place.all.page(params[:page]).per_page(10)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.find(params[:place_id])
    @place.comments.create(comment_params.merge(user: current_user))
     redirect_to place_path(@place)
  else
    render :new, status: :unprocessable_entity
  end
  end

  def show
    @place = Place.find(params[:id])
    @comment = Comment.new
  end

  def edit
  @place = Place.find(params[:id])

  if @place.user != current_user
    return render plain: 'Not Allowed', status: :forbidden
  end
end

  def update
    @place = Place.find(params[:id])

    if @place.user != current_user
    return render plain: 'Not Allowed', status: :forbidden
  end

  @place.update_attributes(place_params)
  if @place.valid?
    redirect_to root_path
  else
    render :edit, status: :unprocessable_entity
  end
end

  def destroy
  @place = Place.find(params[:id])
  if @place.user != current_user
    return render plain: 'Not Allowed', status: :forbidden
  end

  @place.destroy
  redirect_to root_path
end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

