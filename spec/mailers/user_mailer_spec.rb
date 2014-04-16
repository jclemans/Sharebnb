require "spec_helper"

describe UserMailer do
  describe "signup_confirmation" do
    user = FactoryGirl.create(:user, :email => Faker::Internet.email)
    let(:mail) { UserMailer.signup_confirmation(user) }

    it "renders the headers" do
      mail.subject.should eq("Welcome to Sharebnb!")
      mail.to.should eq([user.email])
      mail.from.should eq(["admin@sharebnb.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Thanks for joining Sharebnb!")
    end
  end

end
