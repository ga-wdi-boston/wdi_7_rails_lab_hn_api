require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:user)).to be_valid
  end

  it "is invalid without a name" do
    user = FactoryGirl.build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a email" do
    user = FactoryGirl.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "must have a name over 2 characters" do
    user = FactoryGirl.build(:user, name: "ab")
    user.valid?
    expect(user.errors[:name]).to include("is too short (minimum is 3 characters)")
  end
end
