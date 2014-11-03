class Comment < ActiveRecord::base
	belongs_to :user
	belongs_to :post

	belongs_to :parent, class_name: "Comment"
	has_many :comments, foreign_key: "parent_id"
end