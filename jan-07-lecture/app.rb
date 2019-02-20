require_relative 'app_config'

fxx = Network.create :name => 'FXX'
fox = Network.create :name => 'Fox'
netflix = Network.create :name => 'Netflix'
hbo = Network.create :name => 'HBO'
nimaTV = Network.create :name => 'nimaTV'

newGirl = Show.create! :name => 'New Girl', :network => fox # , :start_date => '2012'
alwaysSunny = Show.create! :name => "It's Always Sunny In Philadelphia", :network => fox # , :start_date => '2012'
russianDoll = Show.create! :name => 'Russian Doll', :network => netflix
umbrellaAcademy = Show.create! :name => 'Umbrella Academy', :network => netflix # , :start_date => '2012'
got = Show.create! :name => 'Game of Thrones', :network => hbo

nimaLive = Show.create! :name => 'Nima Live', :network => nimaTV


zooey = Actor.create :name => "Zooey Deschanel", :role => "Jessica Day", :show => newGirl

schmidt = Actor.create(name: "Max Greenfield", role: "Winston Schmid", show: newGirl)

charlie = Actor.create :name => "Charlie Day", :role => "Frank Reynolds", :show => alwaysSunny

# Actor.all.each do |actor|
#   puts actor.name
# end

charlie.role = 'Charlie Day'
charlie.save


secondActorsShow = Actor.second.show
puts secondActorsShow.name


puts 'All of the people in New Girl'

Show.first.actors.each do |actor|
  puts actor.name
end

charlie.destroy

russianDoll = Show.where(name: "Russian Doll") # where does not return a single thing. it returns many

zooey = Actor.find_by(name: "Zooey Deschanel")

zooey.sayTagline

puts Show.find_by(name: 'New Girl').actors


# alwaysSunny.network = fxx

# puts alwaysSunny.network

# alwaysSunny.save

# start a REPL session
binding.pry

# program resumes here (after pry session)
puts "program resumes here."
