FactoryGirl.define do
 factory :post do
   title Faker::Lorem.sentence
   url Faker::Internet.url
   body Faker::Lorem.paragraph(2)
 end
end