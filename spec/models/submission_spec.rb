require 'rails_helper'


RSpec.describe Submission, type: :model do

  it "has a valid factory" do
    expect {Factory.build(:submission).to be_valid?}
  end

  it "is invalid without a title" do
    expect { Factory.build(:submission, title: nil).not_to be_valid}
  end



end
