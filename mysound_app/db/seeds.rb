# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: 'elena@mail.com', password: 'password', username:'mail')
User.create(email: 'elena@gmail.com', password: 'password', username:'gmail')

Song.create(song_name: 'asdfghjkl', track: '', song_cover:'', user_id: '1')
Song.create(song_name: 'lohgfd', track: '', song_cover:'', user_id: '2')