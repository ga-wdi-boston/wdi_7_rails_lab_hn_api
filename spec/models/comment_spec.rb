require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "has a valid factory " do
    expect(FactoryGirl.build_stubbed(:comment)).to be_valid
  end

  it "is invalid without content" do
    submission = FactoryGirl.build(:comment, content: nil)
    submission.valid?
    expect(submission.errors[:content]).to include("can't be blank")
  end

  it "is invalid without a user id" do
    submission = FactoryGirl.build(:comment, user_id: nil)
    submission.valid?
    expect(submission.errors[:user_id]).to include("can't be blank")
  end

  it "is invalid without a submission id" do
    submission = FactoryGirl.build(:comment, submission_id: nil)
    submission.valid?
    expect(submission.errors[:submission_id]).to include("can't be blank")
  end

  #TODO set up factory data to validate associated
end
