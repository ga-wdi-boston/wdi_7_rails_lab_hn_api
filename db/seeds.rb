# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "lfazah", email: "lfazah@gmail.com")
User.create(username: "xyz", email: "xyz@gmail.com")
User.create(username: "abc", email: "abc@gmail.com")
Post.create(title: "Post 1", user_id: 1, url: "http://google.com")
Post.create(title: "Post 2", user_id: 1, url: "http://123.com")
Post.create(title: "Post 3", user_id: 2, url: "http://456.com")
Post.create(title: "Post 4", user_id: 2, url: "http://789.com")
Post.create(title: "Post 5", user_id: 3, url: "http://1010.com")
