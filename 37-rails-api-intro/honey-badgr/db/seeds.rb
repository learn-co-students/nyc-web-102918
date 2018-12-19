# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
HoneyBadger.create!([
  { name: 'badgie the badger', weight: rand(50), img: 'https://cdn-images-1.medium.com/max/2000/1*7T6GxAg_Rvb1lsKsx9fLhg.png' },
  { name: 'jimmy', weight: rand(50), img: 'https://pixel.nymag.com/imgs/daily/intelligencer/2016/08/18/18-honey-badger-teeth.w710.h473.2x.jpg' },
  { name: "Chef it's ya boi-r-dee", weight: rand(50), img: 'http://hluhluwegamereserve.com/wp-content/uploads/2013/03/honey-badger.png' },
  { name: "JEFF, it's ya boi-r-dee", weight: rand(50), img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDhTpIIC9iLECEqljsZje3zBxQYHBScT_muG-lrnX5TDFHbyHa8A' },
  { name: "GEOFF, it's ya boi-r-dee", weight: rand(50), img: 'https://i.pinimg.com/originals/17/6c/fe/176cfe25376a82b244f5d60ff12ce81a.jpg' },
  { name: 'M❤️m', weight: rand(50), img: 'https://media.mnn.com/assets/images/2014/07/honeybadger.jpg.638x0_q80_crop-smart.jpg' },
])
