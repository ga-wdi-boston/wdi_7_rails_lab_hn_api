class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :comment
  validates_inclusion_of :value, :in => [true, false]
end
