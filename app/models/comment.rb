class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :comments

  has_many :comments
  has_many :votes

  # belongs_to :parent, class_name: "Comment"
  # has_many :comments, foreign_key: "parent_id"

end
