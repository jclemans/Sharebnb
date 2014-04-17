class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :rental
  validates :booked, presence: true
end
