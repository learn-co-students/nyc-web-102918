dino = Party.create!({ name: 'Dinosaurs R my Fave', theme: 'Jurrassic Park' })

Kid.create!([
  { name: 'jimmy', age: 9, party: dino },
  { name: 'timmy', age: 8, party: dino },
  { name: 'kimmy', age: 2, party: dino }
])
