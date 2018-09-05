require_relative 'app_config'
require_relative 'models/genre'
require_relative 'models/track'
# require_relative 'models/book'
# require_relative 'models/author'

AppConfig.establish_connection

# genre = Genre.fifth
# puts genre.Name

# genres.map do |genre|
#     puts genre.sayHello
# end

# genre = Genre.find_by(Name: 'Nima')
# puts genre

# genres = Genre.where(name: 'Rock')
# puts genres.length

# puts tracks.length

# tracks = Track.count
# puts tracks

# tracks.map do |track|
#     puts track.name
#     puts track.lyrics
# end

# track = Track.find_by(name: 'Black Dog')
# puts track.genre.Name


# genre = track.genres

# genre.sayHello

# genres = Genre.where(Name: 'Bossa Nova')
# genres is an array of GENRES
# so each entry is A GENRE

# song = Track.new
# song.genre = genres[0] # THIS IS A GENRE OBJECT
# song.name = "Nima's Bossa Nova Song"
# song.save

# newTrack = Track.new name: "New Genreless Song" #, genre: genres[0]
# newTrack.save

# song = Track.create! name: "Cool New Song 2" #, genre: genres[0]

# song.lyrics

# genres = Genre.all
# song  = Track.create name: "Super Cool Song", genre: genres[4]

songs = Track.where(name: "Hmmm")

songs.map do |song|
    song.destroy
end

