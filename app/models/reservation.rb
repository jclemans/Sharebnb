class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :rental
  validates :booked, presence: true,
                     numericality: true,
                     numericality: {only_integer: true}
  def self.total_booked(r_id)
    reservations = Reservation.all.where(rental_id: r_id)
    reservations.map {|x|x.booked}.reduce(:+)
  end
end
