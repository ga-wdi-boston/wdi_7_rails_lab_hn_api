# == Schema Information
#
# Table name: votes
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  submission_id :integer
#  comment_id    :integer
#  value         :boolean
#

class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission
  belongs_to :comment
end
