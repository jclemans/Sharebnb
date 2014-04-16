require 'spec_helper'

describe User do
  it "sends an email when a new user signs up" do
    user = FactoryGirl.create(:user)
    ActionMailer::Base.deliveries.last.to.should eq [user.email]
  end
end
