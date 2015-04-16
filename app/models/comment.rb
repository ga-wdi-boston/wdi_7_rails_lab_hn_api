class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  belongs_to :comments
  has_many :comments
  has_many :votes
end
