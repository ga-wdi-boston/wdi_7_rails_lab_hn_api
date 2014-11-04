# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  content       :text
#  user_id       :integer
#  submission_id :integer
#  comment_id    :integer
#

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
  belongs_to :submission
  has_many :votes
  has_many :comments
end
