FactoryGirl.define do
  factory :user do
    name Faker::Internet.username
    email Faker::Internet.email
    about Faker::Lorem.paragraph
  end

end
