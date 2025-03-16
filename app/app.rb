require 'sinatra'
require 'sinatra/activerecord'

set :database, {
  adapter: 'postgresql',
  host: ENV['DB_HOST'],
  username: ENV['DB_USER'],
  password: ENV['DB_PASS'],
  database: ENV['DB_NAME']
}

get '/' do
  "I'm alive!"
end
