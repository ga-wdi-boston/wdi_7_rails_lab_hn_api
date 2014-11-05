FactoryGirl.define do
  factory :vote do
    value false
    user
    post
    comment
  end

end
