class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def show
    set_property
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @place.update(place_params)
    if @place.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end


  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:address, :sq_meters, :year, :num_of_rooms, :rent_price, :type_of_property, :state, :image)
  end
end

