class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :created_at
  has_many :submissions
  has_many :comments
  has_many :votes
  url [:user]
end