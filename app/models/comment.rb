class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :comment

  has_many :comments
  has_many :votes

  # belongs_to :parent, class_name: "Comment"
  # has_many :comments, foreign_key: "parent_id"

end
