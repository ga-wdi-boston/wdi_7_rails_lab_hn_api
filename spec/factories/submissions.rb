FactoryGirl.define do
  factory :submission do
    title Faker::Lorem.sentence
    url Faker::Internet.url
    body Faker::Lorem.paragraphs(2)
  end
end