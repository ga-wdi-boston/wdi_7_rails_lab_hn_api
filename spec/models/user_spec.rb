require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:user)).to be_valid
  end

  it "is invalid without a username" do
    user = FactoryGirl.build(:user, username: nil)
    user.valid?
    expect(user.errors[:username]).not_to include("can't be blank")
  end

  it "is invalid without a email" do
    user = FactoryGirl.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).not_to include("can't be blank")
  end

  it "must have a username over 2 characters" do
  end
end
