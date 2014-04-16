class UsersController < ApplicationController
  def show
    @user = current_user
    @rental = Rental.new
  end
end
