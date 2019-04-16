class Actor < ActiveRecord::Base
  belongs_to :show

  before_destroy :scream

  def sayTagline 
    puts "Who's that girl... it's Jess!"
  end

  private
    def scream
      puts 'YOU HAVENT SEEN THE LAST OF MEEEEEeeeeee....'
    end
end