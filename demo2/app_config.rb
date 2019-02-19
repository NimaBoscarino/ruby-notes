require 'active_record'
require_relative 'models/artist'
# require_relative 'models/student'

# Output messages from Active Record to standard out
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts 'Establishing connection to database ...'
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'hiphop',
  username: '',
  password: '',
  host: 'localhost',
  port: 5432,
  pool: 5,
  encoding: 'unicode',
  min_messages: 'error'
)
puts 'CONNECTED'

puts 'Setting up Database (recreating tables) ...'

ActiveRecord::Schema.define do
  drop_table :artists if ActiveRecord::Base.connection.table_exists?(:artists)
  drop_table :songs if ActiveRecord::Base.connection.table_exists?(:songs)
  create_table :artists do |t|
    t.column :name, :string
    t.column :birth_date, :date
    t.column :nickname, :string
    t.timestamps null: false
  end
  create_table :songs do |t|
    t.references :artist
    t.column :title, :string
    t.column :album, :string
    t.timestamps null: false
  end
end

puts 'Setup DONE'