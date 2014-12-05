# == Schema Information
#
# Table name: users
#
#  id    :integer          not null, primary key
#  name  :string
#  about :text
#  email :string
#

class User < ActiveRecord::Base
  has_many :submissions
  has_many :comments
  has_many :votes
end
