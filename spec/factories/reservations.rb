FactoryGirl.define do
  factory :reservation do
    user_id 78
    rental_id 99
    booked true
    startdate "01/01/2001"
    enddate "01/01/2001"
  end
end
