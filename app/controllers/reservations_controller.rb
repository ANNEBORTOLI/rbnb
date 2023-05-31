class ReservationsController < ApplicationController
  before_action :set_property, only: %i[new create]
  before_action :set_reservation, only: %i[show edit update destroy]

  # validates :start_date, comparison: { greater_than_or_equal_to: Date.today }
  # validates :end_date, comparison: { greater_than: :start_date }

  # http://127.0.0.1:3000/properties/6/reservations/1
  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.property = @property
    @reservation.user = current_user
    if @reservation.save
      redirect_to properties_path
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
