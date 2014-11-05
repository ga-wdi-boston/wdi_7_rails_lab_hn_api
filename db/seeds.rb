# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Shayna", email: "shayna@gmail.com", about: "my bio")

User.create(name: "Adrienne", email: "adrienne@gmail.com", about: "adie's bio")


Submission.create(title: "Article title number 1", body: "here is the article body", user_id: 1)


Submission.create(title: "Article title number 2", body: "here is the article body", user_id: 2)


Comment.create(content: "here is a comment", submission_id: 1, user_id:2)

Comment.create(content: "here is a comment", submission_id: 2, user_id:1)

