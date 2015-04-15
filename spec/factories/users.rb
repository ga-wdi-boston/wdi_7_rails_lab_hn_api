# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    about Faker::Lorem.paragraph(2)
  end
end
