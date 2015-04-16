class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  belongs_to :submission

  has_many :votes
  has_many :comments
end
