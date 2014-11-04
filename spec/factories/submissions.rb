FactoryGirl.define do
  factory :submission do
    title Faker::Lorem.sentence(3)
    user
  end

  factory :text_submission, parent: :submission do
    body Faker::Lorem.paragraph(2)
  end

  factory :url_submission, parent: :submission do
    url Faker::Internet.url
  end
end
