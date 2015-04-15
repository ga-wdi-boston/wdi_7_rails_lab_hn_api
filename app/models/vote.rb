class Vote < ActiveRecord::Base

  validates :value, :inclusion => {:in => [true, false, nil], :message => 'requires a true or false value' }


  belongs_to :user
  belongs_to :comment
  belongs_to :post

end
