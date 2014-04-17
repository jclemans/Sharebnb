class ReservationsController < ApplicationController

  def create
    @rental = Rental.find(params[:reservation][:rental_id])
    @reservation = Reservation.create(user_id: current_user.id, rental_id: @rental.id, booked: true)
    redirect_to user_path(current_user)
  end

  def destroy
    @reservation = Reservation.find_by(user_id: current_user.id)
    @reservation.destroy
    redirect_to user_path
  end
end
