class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  belongs_to :commnet
  has_many :comments
  has_many :karmas
end
