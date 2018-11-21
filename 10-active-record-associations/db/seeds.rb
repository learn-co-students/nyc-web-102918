a1 = Artist.create(name: "Bob Dylan")
a2 = Artist.create(name: "Lil' Wayne")
a3 = Artist.create(name: "Queen")


# WORKS WITHOUT BELONGS_TO
Song.create(title: 'Hours', duration: 3600, artist_id: a1.id)


# DOES NOT WORK WITHOUT BELONGS_TO
Song.create(title: "Poke Rap", duration: 1000, artist: Artist.first)

Song.create(title: "Poke Rap", duration: 1000, artist: Artist.find_by(name: "Lil' Wayne"))
# Song.create(title: 'Minutes', duration: 1000)



## OLD WAY

# a1 = Artist.new("Bob Dylan")
# a2 = Artist.new("Lil' Wayne")
# a3 = Artist.new("Queen")

# Song.new(a1, "Hours")