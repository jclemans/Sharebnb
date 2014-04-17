require 'spec_helper'

describe Rental do
  it { should belong_to :user }
  it { should have_many :reservations }
  it { should validate_presence_of :location }
  it { should validate_presence_of :description }
  it { should validate_presence_of :guests }
  it { should validate_numericality_of(:guests).only_integer }
  it { should validate_presence_of :price }

  context "is_booked" do
    it "checks to see if the current rental is booked" do
      rental = FactoryGirl.create(:rental)
      rental.is_booked?.should eq false
    end
  end

end
