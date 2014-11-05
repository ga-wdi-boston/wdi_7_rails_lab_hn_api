class Vote < ActiveRecord::Base
  # TODO: Include validation here?

  belongs_to :user
  belongs_to :submission
  belongs_to :comment
end
