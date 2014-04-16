class Rental < ActiveRecord::Base
  belongs_to :user
  validates :location, presence: true
  validates :description, presence: true
  validates :people, presence: true,
                     numericality: true,
                     numericality: {only_integer: true}
end
