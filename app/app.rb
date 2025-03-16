require 'sinatra'
require 'active_record'

# ActiveRecord::Base.establish_connection(
#   adapter: 'postgresql',
#   host: ENV['DB_HOST'],
#   username: ENV['DB_USER'],
#   password: ENV['DB_PASS'],
#   database: ENV['DB_NAME']
# )

# ActiveRecord::Schema.define do
#   unless ActiveRecord::Base.connection.table_exists?(:users)
#     create_table :users do |table|
#       table.string :name
#       table.string :email
#     end
#   end
# end

get '/' do
  "I'm alive!"
end
