class User < ActiveRecord::Base
  has_many :submissions
  has_many :votes
  has_many :comments

  validates :name, :email, presence: true
  validates :name, length: { minimum: 3 }
end
