require 'pry'

def instructors
  [
    {
      name: "Mike",
      cats: true,
      age: 33
    },
    {
      name: "Steven",
      cats: true,
      age: 38
    },
    {
      name: "Laura",
      cats: false,
      age: 16
    },
    {
      name: "Vicky",
      cats: false,
      age: 9001
    }
  ]
end

# pick out the instructors who like cats
cat_people = instructors.select do |instructor|
  instructor[:cats]
end

# get the names of all the instructors as an array of strings
instructor_names = instructors.map do |instructor|
  instructor[:name]
end

binding.pry

puts "lalalalalala"
