class Track < ActiveRecord::Base
    belongs_to :genre
    validates :genre, presence: true

    # before_validation :make_uppercase

    # after_save :send_email
    # def lyrics
    #     puts "Macarena!"
    # end

    # private
    #     def make_uppercase
    #         puts "MAKING UPPERCASE"
    #         self.name = self.name.upcase
    #     end

    #     def send_email 
    #         nil
    #     end

    def lyrics
        puts "Macarena!!"
    end

end

# Track.make_uppercase 

# helloSong = Track.new

# helloSong.make_uppercase
