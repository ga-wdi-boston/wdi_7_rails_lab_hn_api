class CommentSerializer < ActiveModel::Serializer
  attributes :content, :submission_id
  belongs_to :user
  belongs_to :comment
  belongs_to :submission
  has_many :votes
  has_many :comments
end