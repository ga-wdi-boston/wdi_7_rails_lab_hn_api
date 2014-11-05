
USERS
id    :integer    # primary key
name  :string
about :text
email :string

COMMENTS
id            :integer    # primary key
user_id       :integer
submission_id :integer
comment_id    :integer
content       :text



