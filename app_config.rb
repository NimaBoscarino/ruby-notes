require 'active_record'
require 'active_support/all'

module AppConfig

  DATABASE = 'chinook'
  # DATABASE = 'library'

  DATABASE_PATH = File.absolute_path("#{DATABASE}.db", File.dirname(__FILE__))

  def self.establish_connection
    puts "Connecting to database '#{DATABASE_PATH}'"
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: DATABASE_PATH
    )
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

end
