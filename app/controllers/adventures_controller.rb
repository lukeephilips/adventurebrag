class AdventuresController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @adventure = @place.adventures.new
  end
  def create
    @place = Place.find(params[:place_id])
    @adventure = @place.adventures.new(adventure_params)
    if @adventure.save
      flash[:notice] = "You added #{@adventure.name}"
      redirect_to place_path(@place)
    else
      flash[:alert] = @adventure.errors.full_messages.each {|m| m.to_s}.join
      render :new
    end
  end
  def edit
    @adventure = Adventure.find(params[:id])
  end
  def update
    @place = Place.find(params[:id])
    @adventure = Adventure.find(params[:id])
    if @adventure.update(adventure_params)
      flash[:notice] = "You edited #{@adventure.name}"
      redirect_to place_path(@place)
    else
      flash[:alert] = @adventure.errors.full_messages.each {|m| m.to_s}.join
      render :edit
    end
  end
  def destroy
    adventure = Adventure.find(params[:id])
    adventure.destroy
    flash[:notice] = "You deleted #{adventure.name}"
    redirect_to place_path(adventure.place)
  end

  private
  def adventure_params
    params.require(:adventure).permit(:name, :description, :days, :user_id)
  end
end
