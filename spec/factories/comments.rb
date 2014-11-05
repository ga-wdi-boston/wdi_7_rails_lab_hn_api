FactoryGirl.define do
  factory :comment do
    content Faker::Lorem.paragraph(1)
  end
end
