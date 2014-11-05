FactoryGirl.define do
  factory :vote do
    user
    direction 1
  end

  factory :comment_vote, parent: :vote do
    comment
  end

  factory :submission_vote, parent: :vote do
    submission
  end


  factory :base_dir_vote, class: Vote do
    user
    submission
  end

  factory :up_vote, parent: :base_dir_vote do
    direction 1
  end

  factory :down_vote, parent: :base_dir_vote do
    direction -1
  end

end
