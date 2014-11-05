FactoryGirl.define do
  factory :submission do
    title Faker::Lorem.sentence(3)
    url Faker::Internet.url
    user
  end

  factory :base_submission, class: Submission do
    title Faker::Lorem.sentence(3)
    user
  end

  factory :text_submission, parent: :base_submission do
    body Faker::Lorem.paragraph(2)
  end

  factory :url_submission, parent: :base_submission do
    url Faker::Internet.url
  end
end
