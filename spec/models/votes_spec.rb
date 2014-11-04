require 'rails_helper'

RSpec.describe Vote, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:vote)).to be_valid
  end
end

 # it "is only valid with a boolean input" do
  #   @voteTrue = Vote.create(value: true)
  #   @voteNum = Vote.create(value: 5)
  #   @voteWord = Vote.create(value: "Word")

  #   expect(@voteTrue).to be_valid
  #   expect(@voteNum).not_to be_valid
  #   expect(@voteWord).not_to be_valid
  # end

