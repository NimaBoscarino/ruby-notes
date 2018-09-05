class Genre < ActiveRecord::Base
    has_many :tracks

    def sayHello
        puts "What up!"
    end

end
