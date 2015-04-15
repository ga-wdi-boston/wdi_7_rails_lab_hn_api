FactoryGirl.define do
  factory :comment do
    content Faker::Lorem.sentence(3)
    user
    submission
  end

end
