require_relative 'app_config'

pokemon = Show.new :name => 'Pokemon'
pokemon.save

kanyeNews = Show.create :name => 'Kanye News'

newGirl = Show.create :name => 'New Girl'
alwaysSunny = Show.create :name => "It's Always Sunny In Philadelphia"
russianDoll = Show.create :name => 'Russian Doll'
umbrellaAcademy = Show.create :name => 'Umbrella Academy'

zooey = Actor.create :name => "Zooey Deschanel", :role => "Jessica Day", :show_id => newGirl.id

schmidt = Actor.create(name: "Max Greenfield", role: "Winston Schmid", show_id: newGirl.id)

charlie = Actor.create :name => "Charlie Day", :role => "Frank Reynolds", :show_id => alwaysSunny.id

firstActor = Actor.first # A QUERY!
puts firstActor.name

Actor.all.each do |actor|
  puts actor.name
end

firstActor.sayTagline

charlie.role = 'Charlie Day'
charlie.save

secondActorsShow = Actor.first.show
puts secondActorsShow.name

puts 'All of the people in New Girl'

Show.find_by(name: 'New Girl').actors.each do |actor|
  puts actor.name
end

russianDoll = Show.where(name: "Russian Doll") # where does not return a single thing. it returns many

zooey = Actor.find_by(name: "Zooey Deschanel")

# # puts Show.find_by(name: 'New Girl').actors

charlie.destroy


# puts netflix.shows

# fox.destroy!

# # puts netflix.shows