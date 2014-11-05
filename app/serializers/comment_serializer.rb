class CommentSerializer < ActiveModel::Serializer
  attributes :content
  belongs_to :user
  belongs_to :comment
  belongs_to :submission
  has_many :votes
  has_many :comments
end