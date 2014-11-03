class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  has_many :votes

  validates :name, presence: true
  validates :email, presence: true
end
