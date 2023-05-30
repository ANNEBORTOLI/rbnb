class PropertiesController < ApplicationController
  before_action :set_property, only: %i[edit, update, destroy]

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to @property
    else
      render :edit, status: :unprocessable_entity
    end
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
