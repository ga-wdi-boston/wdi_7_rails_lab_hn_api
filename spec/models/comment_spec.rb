require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "has a valid factory" do
    comment = FactoryGirl.build_stubbed(:comment)
    expect(comment).to be_valid
  end

  it "is invalid without a content" do
    comment = FactoryGirl.build_stubbed(:comment, content: nil)
    expect(comment).not_to be_valid
  end
end
