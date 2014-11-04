require 'rails_helper'

RSpec.describe Post, type: :model do
 it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:post)).to be_valid
  end

  it "is invalid without a title" do
  	post = FactoryGirl.build(:post, title: nil)
  	post.valid?
  	expect(post.errors[:title]).not_to include("can't be blank")
  end

  it "is invalid without a url"do
  	post = FactoryGirl.build(:post, url: nil)
  	post.valid?
  	expect(post.errors[:url]).not_to include("can't be blank")
  end

  it "is invalid without a user_id" do
  	post = FactoryGirl.build(:post, user_id: nil)
  	post.valid?
  	expect(post.errors[:user_id]).not_to include("can't be blank")
  end
  # it "has many comments"
end

# +  it "is invalid without a name" do
# +    user = FactoryGirl.build(:user, name: nil)
# +    user.valid?
# +    expect(user.errors[:name]).not_to include("can't be blank")
# +  end