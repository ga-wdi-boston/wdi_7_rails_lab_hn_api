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

require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:comment)).to be_valid
  end

  it "is invalid without content" do
    comment = FactoryGirl.build(:comment, content: nil)
    comment.valid?
    expect(comment.errors[:comment]).not_to include("can't be blank")
  end

end
