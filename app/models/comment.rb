class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  has_many :votes
  belongs_to :submission
  has_many :comments
end
