# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Article.delete_all
Comment.delete_all
Karma.delete_all


user_1 = User.create(email: 'doomologyexpert@gmail.com', name: 'Captain Jack Diamond')
article_1 = Article.create(title: 'the first article', user_id: 1, link: false, body: 'blahuewrtdewhstdwejhcsadnvydjfzbgdjfyvdjydjnsyfhdrsygxju', karma: 0, weight: 0)
article_2 = Article.create(title: 'The second link', user_id: 1, link: true, link_url: 'https://www.youtube.com/watch?v=NWD7iqtOJSE', karma: 0, weight: 0)
comment_1 = Comment.create(user_id: 1, article_id: 1, message: 'I did this')
