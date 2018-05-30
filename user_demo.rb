class User
    attr_accessor :username, :email
    attr_writer :pw

    def initialize(username, email, pw)
        @table = "users"
        @username = username
        @email = email
        @pw = pw
    end

    def wave
        puts "#{@username} says hello"
    end

    def self.all
        query = "SELECT * FROM #{@table}"
        results = pq.query(query) # or whatever connector we're using...
        results.map do |result|
            User.new result.username, result.email, result.pw
        end
    end
end

# BREAD -> CRUD

# CREATE
# READ
# UPDATE
# DELETE/DESTROY

# BROWSE -- done!
# READ -- get One
# EDIT -- update One / many
# ADD -- done!
# DELETE/DESTROY -- delete