class Rental < ActiveRecord::Base
  belongs_to :user
  has_many :reservations
  has_many :reviews
  validates :location, presence: true
  validates :description, presence: true
  validates :guests, presence: true,
                     numericality: true,
                     numericality: {only_integer: true}
  validates :price, presence: true
  has_attached_file :img,
                    :styles => { :thumb => "60x60", :medium => "150x150>", :big => "400x400>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/

  def is_booked?
    User.all.any? do |user|
      user.reservations.find_by(rental_id: self.id)
    end
  end

  def find_renter
    User.find(self.reservations.find_by(rental_id: self.id).user_id)
  end
end
