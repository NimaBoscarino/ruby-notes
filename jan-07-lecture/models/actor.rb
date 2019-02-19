class Actor < ActiveRecord::Base
  belongs_to :show

  def sayTagline 
    puts "Who's that girl... it's Jess!"
  end
end