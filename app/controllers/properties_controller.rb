class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index show]
  before_action :set_property, only: %i[show edit update destroy]

  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user
    if @property.save
      redirect_to @property
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to @property
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @property.destroy
    redirect_to root_path
  end

  def set_properties
    @properties = Property.where(user: current_user)
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  # STRONG_PARAMS
  def property_params
    params.require(:property).permit(:home_type, :total_occupancy, :address, :price, :summary)
  end

end
