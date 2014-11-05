require 'rails_helper'

RSpec.describe Vote, :type => :model do
  it "has a valid factory" do
    vote = FactoryGirl.build_stubbed(:vote)
    expect(vote).to be_valid
  end
  it "is invalid without a value" do
    vote = FactoryGirl.build_stubbed(:vote, value: nil)
    expect(vote).not_to be_valid
  end
end
