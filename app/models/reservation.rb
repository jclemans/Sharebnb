class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :rental
  validates :booked, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  after_create :send_booked_confirmation, :send_rental_booked

  def send_booked_confirmation
    UserMailer.reservation_confirm(self).deliver
  end

  def send_rental_booked
    UserMailer.rental_booked(self).deliver
  end
end

