require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "has a valid factory" do
    pending
    expect(FactoryGirl.build_stubbed(:post)).to be_valid
  end

  it "is invalid without a title" do
    pending
    post = FactoryGirl.build(:post, title: nil)
    expect(post).not_to be_valid
  end
end
