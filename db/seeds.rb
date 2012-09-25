# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


album1 = MusicAlbum.create :name => "...And Justice for All", :year => 1988
Track.create :name => "...And Justice for All", :duration => 582, :music_album_id => album1.id
Track.create :name => "One", :duration => 390, :music_album_id => album1.id
Track.create :name => "Some song", :duration => 312, :music_album_id => album1.id
Track.create :name => "Hit the Lights", :duration => 257, :music_album_id => album1.id
Track.create :name => "Whiplash", :duration => 250, :music_album_id => album1.id
album2 = MusicAlbum.create :name => "Kill Em All", :year => 1983
Track.create :name => "Eye of the Beholder", :duration => 390, :music_album_id => album2.id
Track.create :name => "Jump in the Fire", :duration => 312, :music_album_id => album2.id
Track.create :name => "Hit the Lights", :duration => 257, :music_album_id => album2.id
Track.create :name => "Whiplash", :duration => 250, :music_album_id => album2.id
