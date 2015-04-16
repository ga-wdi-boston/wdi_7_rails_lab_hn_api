class Comment < ActiveRecord::Base
  has_many :votes
  has_many :comments
  belongs_to :comment
  belongs_to :submission
  belongs_to :user

end
