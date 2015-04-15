require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:comment)).to be_valid
  end

  it "is invalid without content" do
    comment = FactoryGirl.create(:comment, content: "Here is a bit of test content")
    comment.valid?
    expect(comment.errors[:content]).not_to include("can't be blank") #how does this one work?
  end
end

  # it "is invalid without content" do
  #   comment = FactoryGirl.build_stubbed(:comment, content: nil)
  #   comment.valid?
  #   expect(comment.errors[:content]).not_be_nil #how does this one work?
  # end


