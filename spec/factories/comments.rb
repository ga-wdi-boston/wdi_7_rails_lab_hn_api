# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  content       :text
#  user_id       :integer
#  submission_id :integer
#  comment_id    :integer


FactoryGirl.define do
  factory :comment do
    content Faker::Lorem.sentence
  end
end