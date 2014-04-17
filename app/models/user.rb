class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :send_welcome_message
  has_many :rentals
  has_many :reservations

  def send_welcome_message
    UserMailer.signup_confirmation(self).deliver
  end

  def has_booked?(r_id)
    if self.reservations.where(rental_id: r_id).first.nil?
      false
    else
      self.reservations.where(rental_id: r_id).first.booked
    end
  end
end
