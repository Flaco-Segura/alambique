require 'sinatra/activerecord/rake'
require_relative '../app'

namespace :db do
  desc 'Migrate the database'
  task :migrate do
    migraton_version = ENV['VERSION'] || nil

    ActiveRecord::Migration.verbose = true
    ActiveRecord::MigrationContext.new('migrations')
      .migrate(migraton_version)
  end
end