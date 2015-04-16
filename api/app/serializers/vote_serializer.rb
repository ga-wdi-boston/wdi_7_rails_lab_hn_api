class VoteSerializer < ActiveModel::Serializer
  attributes :value

  belongs_to :user
  belongs_to :submission
  belongs_to :comment

  url [:user, :submission, :comment, :vote]
end
