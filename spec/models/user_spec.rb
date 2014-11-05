require 'rails_helper'


RSpec.describe User, type: :model do

  # it "has a valid facotry" do
  #   expect(FactoryGirl.build_stubbed(:user)).to be_valid?
  # end

  it "has a valid factory" do
    expect { Factory.build(:user).to be_valid }
  end

  it "is invalid without an username" do
    expect { Factory.build(:user, username: nil).not_to be_valid}
  end

  it "is invalid without a password" do
    expect { Factory.build(:user, password: nil).not_to be_valid}
  end


end

# describe User do
#   it "has a valid factory" do
#     expect { Factory.build(:user).to be_valid }
#   end

#   it "is invalid without an email address" do
#     expect { Factory.build(:user, email: nil).not_to be_valid}
#   end

#   it "is invalid without a password" do
#     expect { Factory.build(:user, password: nil).not_to be_valid}
#   end

#   it "is invalid if the password is less than 8 characters" do
#     expect { Factory.build(:user, password: "short").not_to be_valid}
#   end
# end


# first two tests will be helpful for the tests tonight.
