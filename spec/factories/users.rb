FactoryGirl.define do
 factory :user do
   name Faker::Name.name
   email Faker::Internet.email
   about Faker::Lorem.paragraph(2)
 end
end