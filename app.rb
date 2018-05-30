require_relative 'app_config'
require_relative 'models/genre'
require_relative 'models/track'
require_relative 'models/book'
require_relative 'models/author'

AppConfig.establish_connection

genres = Genre.where(name: 'Rock')

# genres = Genre.all

# genres.map do |genre|
#     puts genre.Name
#     genre.sayHi
# end

# track = Track.find_by(name: 'Black Dog')
# genre = track.genres

# genre.sayHello

# genres.map do |genre|
#    genre.tracks.each do |track|
#        puts track.name
#        track.lyrics
#    end
# end

# song = Track.new
# song.genre = genres[0] 
# song.name = "Nima's Rock Song"
# song.save

# newTrack = Track.new name: "New Genreless Song"#, genre: genres[0]

# puts newTrack.save
# song = Track.find_by(name: "Super Cool Song")
# song.name = 'Hmmm'
# song.save

song = Track.new name: "Cool new song", genre: genres[0]
puts song.save!

song.lyrics
