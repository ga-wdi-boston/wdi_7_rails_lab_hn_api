class VoteSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :comment

  url [:comment, :vote]
end
