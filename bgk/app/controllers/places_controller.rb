class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def edit
    @place = Place.find(params[:id])
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to '/places'
    else
      render 'new'
    end
  end

  def update
    @place = Place.find(params[:id])

    if @place.update(place_params)
      redirect_to @place
    else
      render 'edit'
    end
  end

  private
  def place_params
    params.require(:place).permit(:place_name, :owner, :short_description, :address, :website, :email, :telephone, :opening_hours, :passion_quote, :passion_text)
  end
end
