FactoryGirl.define do
  factory :post do
    title Faker::Lorem.paragraph
    url Faker::Internet.url
    user_id Faker::Number.number(1)
    # comment Faker::Lorem.paragraphs #optional
  end
end
