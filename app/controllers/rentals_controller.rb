class RentalsController < ApplicationController

  def index
    if user_signed_in?
      user_rentals = current_user.rentals
    else
      user_rentals = []
    end
    @rentals = Rental.all - user_rentals
    @unavailable = []
    @rentals.each do |rental|
      if rental.is_booked?
        @unavailable << rental
      end
    end
    @search = Rental.basic_search(params[:query]) - @unavailable - user_rentals
  end

  def show
    @rental = Rental.find(params[:id])
    @reservation = Reservation.new
    @user = @rental.user
  end

  def create
    @user = current_user
    @rental = @user.rentals.new(rental_params)

    if @rental.save
      redirect_to user_path(current_user)
    else
      render 'users/show'
    end
  end

  def update
    @user = User.find(params[:rental][:user_id])
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      redirect_to rental_path
    else
      render 'show'
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to user_path, alert: 'Rental removed.'
  end


private
  def rental_params
    params.require(:rental).permit(:user_id, :description, :location, :guests, :img, :price)
  end
end
