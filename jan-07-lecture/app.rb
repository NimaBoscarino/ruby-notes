require_relative 'app_config'

newGirl = Show.create :name => 'New Girl' # , :start_date => '2012'
alwaysSunny = Show.create :name => "It's Always Sunny In Philadelphia" # , :start_date => '2012'
russianDoll = Show.create :name => 'Russian Doll' # , :start_date => '2012'
umbrellaAcademy = Show.create :name => 'Umbrella Academy' # , :start_date => '2012'

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