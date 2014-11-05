class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission
  belongs_to :comment

  validates :user_id, presence: true
  validates :direction, presence: true
  validates :direction, numericality: true
  validates :direction, inclusion: { in: [1, -1],
    message: "%{value} is not a valid vote direction" }
  validates :comment_id, presence: true, if: "submission_id.nil?"
  validates :submission_id, presence: true, if: "comment_id.nil?"

end
