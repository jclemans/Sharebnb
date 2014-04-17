class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :rental
  validates :booked, presence: true,
                     numericality: true,
                     numericality: {only_integer: true}
end
