class Comment < ActiveRecord::API
  belongs_to :user
  belongs_to :post
  belongs_to :comment
  validates :content, presence: true
end
