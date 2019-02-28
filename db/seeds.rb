require 'pry' 
usr1 = User.create(username: "toogoon", email: "ezra.personal.info@gmail.com")
usr2 = User.create(username: "goon", email: "ezra@gmail.com")
usr3 = User.create(username: "Mike1835", email: "Mik1235@yahoo.com")

cat1 = Category.create(name: "Stooges")
cat2 = Category.create(name: "Clows")
cat3 = Category.create(name: "Commedians")

post1 = Post.create(title: "The way it was", content: "asl;kgh;sadg")
post2 = Post.create(title: "back when it was", content: "asl;kgh;sadg")
post3 = Post.create(title: "the way things were", content: "asl;kgh;sadg")

post1.categories << cat1
post1.categories << cat2
post2.categories << cat3
post2.categories << cat2
post3.categories << cat3

com1 = Comment.create(content: "this was stupid")
com2 = Comment.create(content: "kill me now")
com3 = Comment.create(content: "i loved it")
com4 = Comment.create(content: "please let me die")

com1.user = usr1
com2.user = usr2
com3.user = usr3
com4.user = usr3

post1.comments << com1
post1.comments << com2
post3.comments << com3
post2.comments << com4

post1.save
post1.save
post3.save
post2.save

com1.save
com2.save
com3.save
com4.save