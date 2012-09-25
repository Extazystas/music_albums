# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


MusicAlbum.create :id =>6, :name => "…And Justice for All", :year => 1988
Track.create :id => 30, :name => "...And Justice for All", :duration => 582, :music_album_id => 6
Track.create :id => 31, :name => "One", :duration => 390, :music_album_id => 6
Track.create :id => 32, :name => "Some song", :duration => 312, :music_album_id => 6
Track.create :id => 33, :name => "Hit the Lights", :duration => 257, :music_album_id => 6
Track.create :id => 34, :name => "Whiplash", :duration => 250, :music_album_id => 6
MusicAlbum.create :id =>7, :name => "Kill Em All", :year => 1983
Track.create :id => 42, :name => "Eye of the Beholder", :duration => 390, :music_album_id => 7
Track.create :id => 43, :name => "Jump in the Fire", :duration => 312, :music_album_id => 7
Track.create :id => 44, :name => "Hit the Lights", :duration => 257, :music_album_id => 7
Track.create :id => 45, :name => "Whiplash", :duration => 250, :music_album_id => 7
