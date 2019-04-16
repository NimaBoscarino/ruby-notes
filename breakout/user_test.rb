#CRUD

class Person
  attr_reader :job, :name

  def initialize name, age, potato_preference, job
    @name = name
    @age = age
    @potato_preference = potato_preference
    @job = job

    pg.runQuery 'INSERT INTO PEOPLE YAYADADADA'
  end

  def eatPotatoes
    puts "mmmm I like #{@potato_preference}"
  end

  def get_name
    @name
  end

  def get_job
    @job
  end

  def set_job newJob
    @job = newJob
  end

  def get_friends
    pg.runQuery "SELECT * FROM friends WHERE friender.id=#{userID}"
  end
  
  # Person.all
  def self.all
    query = "SELECT * FROM Person"
    results = pq.query(query) # or whatever connector we're using...
    results.map do |result|
        User.new result.username, result.email, result.pw
    end
  end
end

# Person
# drake = Person.new 'Aubrey Graham', 8, 'mashed'

Person.all
