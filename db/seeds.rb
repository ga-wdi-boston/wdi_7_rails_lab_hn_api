# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({name: "test user", email: "test@email.com" })

post = user.posts.create({title: "test post", url: "http://www.google.com/"})

another_user = User.create({name: "another test user", email: "another_test@email.com" })

comment = another_user.comments.create({content: 'test comment', post_id: post.id})
