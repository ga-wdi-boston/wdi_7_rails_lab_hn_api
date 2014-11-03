class User < ActiveRecord::Base
  has_many :comments
  has_many :threads

  has_many :comments, through: :votes
  has_many :threads, through: :votes
end