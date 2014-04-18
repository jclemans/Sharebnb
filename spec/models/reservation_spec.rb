require 'spec_helper'

describe Reservation do
  it { should belong_to :user }
  it { should belong_to :rental }
  it { should validate_presence_of :booked }
  it { should validate_presence_of :startdate }
  it { should validate_presence_of :enddate }

end
