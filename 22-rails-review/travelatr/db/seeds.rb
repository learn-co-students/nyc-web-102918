# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Blogger.destroy_all
# Destination.destroy_all

b1 = Blogger.create(name: Faker::Name.name, age: 50, bio: Faker::Lorem.characters(30))
b2 = Blogger.create(name: Faker::Name.name, age: 20, bio: Faker::Lorem.characters(30))
b3 = Blogger.create(name: Faker::Name.name, age: 30, bio: Faker::Lorem.characters(30))
b4 = Blogger.create(name: Faker::Name.name, age: 40, bio: Faker::Lorem.characters(30))
b5 = Blogger.create(name: Faker::Name.name, age: 60, bio: Faker::Lorem.characters(30))

# d1 = Destination.create(name: 'Paris')
# d2 = Destination.create(name: 'New York')
# d3 = Destination.create(name: 'London')
# d4 = Destination.create(name: 'Hawaii')
# d5 = Destination.create(name: 'Australia')

p1 = Post.create(blogger: b1, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p2 = Post.create(blogger: b1, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p3 = Post.create(blogger: b2, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p4 = Post.create(blogger: b2, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p5 = Post.create(blogger: b3, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p6 = Post.create(blogger: b4, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p7 = Post.create(blogger: b4, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p8 = Post.create(blogger: b4, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p9 = Post.create(blogger: b5, title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
p10 = Post.create(blogger: b5,  title: Faker::Lorem.words(2).join(' '), content: Faker::Lorem.characters(100))
