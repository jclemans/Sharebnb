class UserMailer < ActionMailer::Base
  default from: "admin@sharebnb.com"

  def signup_confirmation(user)
    @user = user
    mail to: @user.email, subject: "Welcome to Sharebnb!"
  end

  def reservation_confirm(reservation)
    @user = reservation.user
    @rental = reservation.rental
    mail to: @user.email, subject: "Rental Confirmation"
  end

  def rental_booked(reservation)
    @user = User.find(reservation.rental.user_id)
    @rental = reservation.rental
    mail to: @user.email, subject: "Your Rental Has been Booked!"
  end
end
