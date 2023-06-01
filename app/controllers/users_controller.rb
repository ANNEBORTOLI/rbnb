class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @reservations = Reservation.where(user_id: current_user.id)
  end
end
