class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]

  def show
    @place = Place.find(params[:id])
  end
  def index
    @places = Place.all.filter(params.slice(:region))
  end

  def new
    @place = Place.new
    authorize! :new, @place
  end
  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:notice] = "You added #{@place.name}"
      redirect_to places_path
    else
      flash[:alert] = @place.errors.full_messages.each {|m| m.to_s}.join
      render :new
    end
  end

  def edit
    @place = Place.find(params[:id])
    authorize! :edit, @place
  end
  def update
    @place = Place.find(params[:id])
    if @place.update(place_params)
      flash[:notice] = "You edited #{@place.name}"
      redirect_to places_path
    else
      flash[:alert] = @place.errors.full_messages.each {|m| m.to_s}.join
      render :edit
    end
  end
  def destroy
    place = Place.find(params[:id])
    place.destroy
    flash[:notice] = "You deleted #{place.name}"
    redirect_to places_path
  end

  private
  def place_params
    params.require(:place).permit(:name, :description, :category, :region, :image)
  end
end
