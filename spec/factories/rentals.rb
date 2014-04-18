FactoryGirl.define do
  factory :rental do
    description "has stuff"
    location "pdx"
    price 100
    guests 3
    id 99
    user
  end
end
