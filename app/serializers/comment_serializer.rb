class CommentSerializer < ActiveModel::Serializer
  attributes :id

  has_many :votes

  url :comment
ends