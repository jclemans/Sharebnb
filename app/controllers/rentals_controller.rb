class RentalsController < ApplicationController

  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def create
    @user = User.find(params[:rental][:user_id])
    @rental = @user.rentals.new(rental_params)
    if @rental.save
      redirect_to root_path
    else
      render 'users/show'
    end
  end

  def update
    @user = User.find(params[:rental][:user_id])
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      redirect_to root_path
    else
      render 'show'
    end
  end


private
  def rental_params
    params.require(:rental).permit(:description, :location, :guests)
  end
end
