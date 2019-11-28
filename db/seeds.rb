# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
beatit = Song.create(name: "Beat It")
song = Song.create(name: "Song")
a = Artist.create(name: "Adele", bio: "Female")
b = Artist.create(name: "MJ", bio: "Male")
g = Genre.create(name: "R&B")
beatit.artist_id = b
beatit.genre_id = g

