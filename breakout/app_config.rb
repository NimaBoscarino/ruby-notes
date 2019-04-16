require 'active_record'
require_relative 'models/show'
require_relative 'models/actor'
require_relative 'models/network'

# Output messages from Active Record to standard out
ActiveRecord::Base.logger = Logger.new(STDOUT)

puts 'Establishing connection to database ...'
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'shows',
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

## define the schema of the database

ActiveRecord::Schema.define do
  drop_table :shows if ActiveRecord::Base.connection.table_exists?(:shows)
  drop_table :actors if ActiveRecord::Base.connection.table_exists?(:actors)
  drop_table :networks if ActiveRecord::Base.connection.table_exists?(:networks)
  
  create_table :shows do |t|
    t.column :name, :string
    t.timestamps null: false
    t.references :network
  end

  create_table :actors do |t|
    t.references :show
    t.column :name, :string
    t.column :role, :string
    t.timestamps null: false
  end

  create_table :networks do |t|
    t.column :name, :string
    t.timestamps null: false
  end

end

puts 'Setup DONE'