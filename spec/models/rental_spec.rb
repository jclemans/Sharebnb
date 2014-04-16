require 'spec_helper'

describe Rental do
  it { should belong_to :user }
  it { should validate_presence_of :location }
  it { should validate_presence_of :description }
  it { should validate_presence_of :people }
  it { should validate_numericality_of(:people).only_integer }
end
