FactoryGirl.define do
  factory :user do
    name Faker::Internet.user_name
    email Faker::Internet.email
    about Faker::Lorem.paragraph
  end

end
