# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_1 = User.create({name: 'George', about: 'An about message', email: 'gbanis@gmail.com'})
user_2 = User.create({"name"=>"George", "about"=>"An about message", "email"=>"gg@gg.com"})
