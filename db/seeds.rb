# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Comment.create(content: "I dont think scott is that funny anymore ", user_id: 1, post_id: 19 )
#
Category.create(name: "funny")
Category.create(name: "not funny")
Category.create(name: "super not funny")

User.create(username: "Scott", email: "scotts email")
User.create(username: "Steve", email: "steves email")
User.create(username: "John", email: "johns email")
User.create(username: "Jane", email: "janes email")
