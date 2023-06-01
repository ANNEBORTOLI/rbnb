class ReservationsController < ApplicationController
  before_action :set_property, only: %i[new create]
  before_action :set_reservation, only: %i[show edit update destroy]

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.property = @property
    @reservation.user = current_user
    # Calculate total_price
    days = (@reservation.end_date - @reservation.start_date).to_i
    @reservation.total_price = @property.price * days
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
    redirect_to @reservation
  end

  def set_reservations
    @reservations = Reservation.where(user: current_user)
  end

  private

  def set_property
    @property = Property.find(params[:property_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

end
