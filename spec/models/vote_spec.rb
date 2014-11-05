require 'rails_helper'

RSpec.describe Vote, :type => :model do
  it "has a valid factor" do
    expect(FactoryGirl.build_stubbed(:vote)).to be_valid
  end

  it "is invalid without a value" do
    vote = FactoryGirl.build(:vote, value: nil)
    vote.valid?
    expect(vote.errors[:value]).not_to include("must have a boolean value or be an empty string")
    # TODO: revise this test accordingly: need to think about how to structure votes without an up or down vote. undefined? empty string? nil?
  end
end
