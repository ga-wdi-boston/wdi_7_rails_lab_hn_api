class Comment < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :comment
  belongst_to :comments
  has_many :comments
  has_many :votes
end
