require_relative 'app_config'

fxx = Network.create! :name => 'FXX'
fox = Network.create! :name => 'Fox'
netflix = Network.create! :name => 'Netflix'
hbo = Network.create! :name => 'HBO'
nimaTV = Network.create! :name => 'nimaTV'

pokemon = Show.create! :name => 'Pokemon', :network => nimaTV
kanyeNews = Show.create! :name => 'Kanye News', :network => nimaTV

newGirl = Show.create! :name => 'New Girl', :network => fox
alwaysSunny = Show.create! :name => "It's Always Sunny In Philadelphia", :network => fxx
russianDoll = Show.create! :name => 'Russian Doll', :network => netflix
umbrellaAcademy = Show.create! :name => 'Umbrella Academy', :network => netflix

zooey = Actor.create! :name => "Zooey Deschanel", :role => "Jessica Day", :show_id => newGirl.id

schmidt = Actor.create! name: "Max Greenfield", role: "Winston Schmid", show_id: newGirl.id

charlie = Actor.create! :name => "Charlie Day", :role => "Charlie Kelly", :show_id => alwaysSunny.id

# Actor.all.each do |actor|
#   puts actor.name
# end

# charlie.role = 'Charlie Day'
# charlie.save


secondActorsShow = Actor.second.show

puts secondActorsShow.name


# puts 'All of the people in New Girl'

# Show.first.actors.each do |actor|
#   puts actor.name
# end

# charlie.destroy

# russianDoll = Show.where(name: "Russian Doll") # where does not return a single thing. it returns many

# zooey = Actor.find_by(name: "Zooey Deschanel")

# zooey.sayTagline

# puts Show.find_by(name: 'New Girl').actors

# charlie.destroy


puts netflix.shows

fox.destroy!

# puts netflix.shows