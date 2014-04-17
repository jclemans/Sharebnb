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
      user = FactoryGirl.create(:user, id: 78)
      reservation = FactoryGirl.create(:reservation)
      user.has_booked?(99).should eq true
    end
  end
end
