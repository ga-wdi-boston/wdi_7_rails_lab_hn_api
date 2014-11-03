class Comment < ActiveRecord::Base
  belongs_to :comment
  belongs_to :user
  belongs_to :submission
  has_many :comments
  has_many :votes
end
