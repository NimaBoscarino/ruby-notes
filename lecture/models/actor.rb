class Actor < ActiveRecord::Base
  belongs_to :show # give Actors a .show method
  def sayTagline 
    puts "Who's that girl... it's Jess!"
  end
end