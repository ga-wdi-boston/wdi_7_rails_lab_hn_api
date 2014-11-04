FactoryGirl.define do
  factory :comment do
    content Faker::Lorem.paragraph(2)
  end
end
