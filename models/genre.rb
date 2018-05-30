class Genre < ActiveRecord::Base
    has_many :tracks

    def sayHi
        puts "hello!"
    end

end
