require 'spec_helper'

describe Rental do
  it { should belong_to :user }
  it { should have_many(:users).through :reservations}
  it { should validate_presence_of :location }
  it { should validate_presence_of :description }
  it { should validate_presence_of :guests }
  it { should validate_numericality_of(:guests).only_integer }
  it { should validate_presence_of :price }
end
