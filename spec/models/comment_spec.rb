require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "has a valid factory" do
    pending
    expect(FactoryGirl.build_stubbed(:comment)).to be_valid
  end

  it "is invalid without content" do
    pending
    comment = FactoryGirl.build(:comment, content: nil)
    expect(comment).not_to be_valid
  end
end
