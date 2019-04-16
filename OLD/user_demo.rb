class User
    attr_accessor :username, :email
    attr_writer :pw

    def initialize(username, email, pw)
        @table = "users"
        @username = username
        @email = email
        @pw = pw
    end

    def save()
        pg.runQuery `INSERT ... INTO...`
    end

    def wave
        puts "#{@username} says hello"
    end

    def getFriends
        # query to get all friends, and return them as User objects
    end

    def self.all
        query = "SELECT * FROM #{@table}"
        results = pq.query(query) # or whatever connector we're using...
        results.map do |result|
            User.new result.username, result.email, result.pw
        end
    end
end

tim = User.new 'tim'
tim.wave

tim.save

User.all



class Post
    attr_accessor :creation_date, :user

    def initialize
    end

    def saveAsDraft

    end

    def commentOn

    end
end

jim = User.findByName 'jim'
jim.getPosts

post.getUser