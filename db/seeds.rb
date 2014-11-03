# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all;

u1 = User.create(username: "User One", email: "test1@test.com", about: "I'm all about user one.");
u2 = User.create(username: "User Two", email: "test2@test.com", about: "I'm all about user two.");
