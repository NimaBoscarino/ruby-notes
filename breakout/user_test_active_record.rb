class Person < ActiveRecord::Base
  #mainly any db interaction for this "MODEL"

  def eatPotatoes
    puts "mmmm I like #{@potato_preference}"
  end
end

Person.all

drake = Person.create 'Aubrey'
