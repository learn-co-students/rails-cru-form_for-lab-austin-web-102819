# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Artist.create(name: "A" , bio: "A-team")
b = Artist.create(name:"B", bio: "Bees knees")
c = Artist.create(name:"C", bio: "Ceeya")


rap = Genre.create(name: "Rap")
country = Genre.create(name: "Country")
classic = Genre.create(name: "Classical")


one = Song.create(name: "Uno" , artist_id: a.id , genre_id: rap.id) 
two = Song.create(name: "Dos", artist_id: b.id , genre_id: country.id)
three = Song.create(name: "Tres", artist_id: c.id, genre_id: classic.id)