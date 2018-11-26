# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Making bagels boss"
Bagel.create(name: "cinna-raisin", toasty: true)
Bagel.create(name: "uhh everything", toasty: false)
Bagel.create(name: "sesame", toasty: true)
puts "bagels is donezo"
