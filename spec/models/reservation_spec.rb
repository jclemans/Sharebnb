require 'spec_helper'

describe Reservation do
  it { should belong_to :user }
  it { should belong_to :rental }
  it { should validate_presence_of :booked }
  it { should validate_numericality_of(:booked).only_integer }
  context 'total_booked' do
    it 'returns total number of reservations that are booked for a rental' do
      user = create(:user, :id => 78)
      rental = create(:rental)
      reservation = create(:reservation)
      reservation.total_booked(rental.id).should eq 1
    end
  end
end
