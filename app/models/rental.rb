class Rental < ActiveRecord::Base
  belongs_to :user
  validates :location, presence: true
  validates :description, presence: true
  validates :guests, presence: true,
                     numericality: true,
                     numericality: {only_integer: true}
  has_attached_file :img,
                    :styles => { :thumb => "60x60", :medium => "150x150>", :big => "400x400>" },
                    :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/
end
