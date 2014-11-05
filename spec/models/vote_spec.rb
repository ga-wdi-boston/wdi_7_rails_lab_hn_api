require 'rails_helper'

RSpec.describe Vote, type: :model do

  it "has a valid up vote factory" do
    expect(FactoryGirl.build_stubbed(:up_vote)).to be_valid
  end

  it "has a valid down vote factory" do
    expect(FactoryGirl.build_stubbed(:down_vote)).to be_valid
  end

  it "has a valid comment vote factory" do
    expect(FactoryGirl.build_stubbed(:comment_vote)).to be_valid
  end

  it "has a valid submission vote factory" do
    expect(FactoryGirl.build_stubbed(:submission_vote)).to be_valid
  end

  it "is invalid without a vote direction" do
    vote = FactoryGirl.build(:vote, direction: nil)
    vote.valid?
    expect(vote.errors[:direction]).to include("can't be blank")
  end

  it "is invalid if direction is not numeric" do
    vote = FactoryGirl.build(:vote, direction: 'a')
    vote.valid?
    expect(vote.errors[:direction]).to include("is not a number")
  end

  it "is invalid if direction is not either 1 or -1" do
    vote = FactoryGirl.build(:vote, direction: 5)
    vote.valid?
    expect(vote.errors[:direction]).to include("5 is not a valid vote direction")
  end

  it "is invalid without a user id" do
    vote = FactoryGirl.build(:vote, user_id: nil)
    vote.valid?
    expect(vote.errors[:user_id]).to include("can't be blank")
  end

  it "is invalid without either a submission id or a comment id" do
    vote = FactoryGirl.build(:vote)
    vote.valid?
    expect(vote.errors[:submission_id]).to include("can't be blank")
    expect(vote.errors[:comment_id]).to include("can't be blank")
  end

  it "is unique based on user and submission" do
  end

end
