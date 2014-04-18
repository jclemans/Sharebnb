class ReservationsController < ApplicationController

  def create
    @rental = Rental.find(params[:reservation][:rental_id])
    @reservation = Reservation.create(reservation_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @reservation = Reservation.find_by(user_id: current_user.id)
    @reservation.destroy
    redirect_to user_path
  end

private
  def reservation_params
    params.require(:reservation).permit(:startdate, :enddate, :user_id, :rental_id, :booked)
  end
end
