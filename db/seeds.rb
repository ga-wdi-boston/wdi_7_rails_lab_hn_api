# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Submission.delete_all


users_list = [
  ["Some User Name", "some_user@email.com", "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas."],
  ["Another User Name", "another_user@email.com", "More about stuff and things."]
]

users_list.each do |name, email, about|
  User.create(name: name, email: email, about: about)
end


submissions_list = [
  ["Pellentesque habitant morbi tristique senectus et netus et malesuada.", "http://www.google.com/", "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", "Some User Name"],
  ["Submission title 2 is a sentence sometimes.", "http://www.nytimes.com/", "Body text maybe or maybe not.", "Some User Name"]
  ["Submission title 3 is a sentence always.", "http://www.bostonglobe.com/", "Body text maybe or maybe not and sometimes never.", "Another User Name"]
]

submissions_list.each do |title, url, body, user|
  Submission.create(title: title, url: url, body: body, user_id: User.find_by(name: user).id)
end



