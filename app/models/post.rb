class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  has_many :comments
  has_many :votes
end
