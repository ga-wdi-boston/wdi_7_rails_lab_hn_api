class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :created_at, :id
  has_many :submissions
  has_many :comments
  has_many :votes
end
