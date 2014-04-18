require 'spec_helper'

describe User do
  it { should have_many :rentals }
  it { should have_many :reservations }

  it "sends an email when a new user signs up" do
    user = FactoryGirl.create(:user)
    ActionMailer::Base.deliveries.last.to.should eq [user.email]
  end

  context "has_booked" do
    it "checks to see if the current user has booked the rental" do
      rental = FactoryGirl.create(:rental)
      user = FactoryGirl.create(:user)
      reservation = FactoryGirl.create(:reservation, user: user)
      user.has_booked?(rental.id).should eq true
    end
  end
end
