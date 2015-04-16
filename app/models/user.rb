class User < ActiveRecord::Base
  has_many :submissions
  has_many :comments
  has_many :votes
  # has_many: comments
end
