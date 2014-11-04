class SubmissionSerializer < ActiveModel::Serializer
  attributes :title, :url, :body, :created_at
  belongs_to :user
  has_many :comments
  has_many :votes
end