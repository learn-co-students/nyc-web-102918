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

true_cats = []
instructors.each do |element|
  if element[:cats]
    true_cats << element
  end
end
true_cats

# def select(array)
#   out = []
#   array.each do |val|
#     if yield(val)
#       out.push(val)
#     end
#   end
#   out
# end


# get the names of all the instructors as an array of strings
instructor_names = instructors.map do |instructor|
  instructor[:name]
end

instructor_array = []
instructors.each do |element|
  instructor_array << element[:name]
end
instructor_array


binding.pry

puts "lalalalalala"
