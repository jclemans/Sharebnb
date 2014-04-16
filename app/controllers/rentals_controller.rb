class RentalsController < ApplicationController
  def create
    @user = User.find(params[:rental][:user_id])
    @rental = @user.rentals.new(rental_params)
    if @rental.save
      redirect_to root_path
    else
      render 'users/show'
    end
  end


private
  def rental_params
    params.require(:rental).permit(:description, :location, :people)
  end
end
