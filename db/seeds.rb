# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_1 = User.create({name: 'George', about: 'An about message', email: 'gbanis@gmail.com'})
user_2 = User.create({"name"=>"George", "about"=>"An about message", "email"=>"gg@gg.com"})

submission_1 = Submission.create({
  title: "Google Inbox Given Small Visual Update",
  url: "http://www.xda-developers.com/android/google-inbox-visual-update/",
  user_id: 1
})

submission_2 = Submission.create({
  title: "Google Inbox Given Small Visual Update",
  body: "Not too long ago, Google launched an invite-only beta program for its new Email client, Inbox by Gmail. This new service has already gotten to be quite popular in just a few weeks, and many of us are seeing a stream of invitation requests on our G+ and Facebook news feeds. And now that users are routinely receiving three invites every few days, the community is ever expanding.",
  user_id: 2
})

