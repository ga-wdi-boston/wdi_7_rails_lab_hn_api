
USERS
id    :integer    # primary key
name  :string
about :text
email :string

COMMENTS
id            :integer    # primary key
content       :text
user_id       :integer
submission_id :integer
comment_id    :integer

SUBMISSIONS
id        :integer    # primary key
title     :string
url       :string
body      :text
user_id   :integer

VOTES
id            :integer    # primary key
value         :boolean    # OR empty string? or nil? or undefined?
user_id       :integer
submission_id :integer
comment_id    :integer

