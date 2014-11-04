# == Schema Information
#
# Table name: submissions
#
#  id      :integer          not null, primary key
#  title   :string
#  url     :string
#  body    :text
#  user_id :integer
#

FactoryGirl.define do
  factory :submission do
    title Faker::Lorem.sentence
    url Faker::Internet.url
    body Faker::Lorem.paragraphs(2)
  end
end