require_relative 'app_config'
require_relative 'models/artist'
require_relative 'models/song'

# AppConfig.establish_connection


kanye = Artist.new(name: 'Kanye West', birth_date: 'June 08, 1977', nickname: 'Yeezy')
kanye.save # <= INSERT sql

drake = Artist.create(name: 'Aubrey Graham', birth_date: 'June 08, 1977', nickname: 'Drizzy')
gucci = Artist.create(name: 'Gucci Mane', birth_date: 'June 08, 1977', nickname: 'Drizzy')
cardiB = Artist.create(name: 'Cardi B', birth_date: 'June 08, 1977')
nicki = Artist.create(name: 'Nicki Minaj', birth_date: 'June 08, 1977')
ariana = Artist.create(name: 'Ariana Grande', birth_date: 'June 08, 1977')

lilw = Artist.create(name: 'Lil Wayne', birth_date: 'June 08, 1977')
lilj = Artist.create(name: 'Lil Jon', birth_date: 'June 08, 1977')
lilk = Artist.create(name: 'Lil Kim', birth_date: 'June 08, 1977')
lily = Artist.create(name: 'Lil Yachty', birth_date: 'June 08, 1977')
lils = Artist.create(name: 'Lil Sebastian', birth_date: 'June 08, 1977')

# what happens if I don't have belongs_to?
stronger = Song.new(title: 'Stronger', album: 'Graduation', artist: kanye)

kanye.songs.create(title: 'Stronger', album: 'Graduation')

drakeRef = Artist.where(name: 'Aubrey Graham').first

drakeRef.birth_date = 'Oct 24, 1986'

drakeRef.save

lils = Artist.where("name LIKE ?", "Lil%")

puts lils

puts drake.tagline


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

# songs = Track.where(name: "Hmmm")

# songs.map do |song|
#     song.destroy
# end

