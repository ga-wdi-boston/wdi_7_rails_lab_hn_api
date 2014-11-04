require 'rails_helper'

RSpec.describe Submission, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:submission)).to be_valid
  end

  it "is invalid without a title" do
    submission = FactoryGirl.build(:submission, title: nil)
    submission.valid?
    expect(submission.errors[:title]).not_to include("can't be blank")
  end
end
