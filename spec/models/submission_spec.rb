require 'rails_helper'

RSpec.describe Submission, type: :model do
  it "has a valid factory for text content" do
    expect(FactoryGirl.build_stubbed(:text_submission)).to be_valid
  end

  it "has a valid factory for url to content" do
    expect(FactoryGirl.build_stubbed(:url_submission)).to be_valid
  end

  it "is invalid without a title" do
    submission = FactoryGirl.build(:text_submission, title: nil)
    submission.valid?
    expect(submission.errors[:title]).to include("can't be blank")
  end

  it "is invalid without either a url or a body" do
    submission = FactoryGirl.build(:text_submission, body: nil)
    submission.valid?
    expect(submission.errors[:body]).to include("can't be blank")
    expect(submission.errors[:url]).to include("can't be blank")
  end

  it "is invalid without a user id" do
    submission = FactoryGirl.build(:text_submission, user_id: nil)
    submission.valid?
    expect(submission.errors[:user_id]).to include("can't be blank")
  end

end
