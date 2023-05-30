class ReservationsController < ApplicationController
  before_action :find_property, only: %i[new, create]
  before_action :find_reservation, only: %i[edit, update, destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.property = @property
    if @reservation.save
      redirect_to @reservation, notice: 'Reservation created successfully.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to @reservation, notice: 'Reservation updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @reservation.destroy
    redirect_to @reservation
  end

  private

  def find_property
    @property = Property.find(params[:property_id])
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:check_in_date, :check_out_date, :guests_count)
  end
end
