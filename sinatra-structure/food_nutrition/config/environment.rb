require 'bundler/setup'
Bundler.require

configure :development do
    set :database, 'sqlite3:db/database.db'
end

require_all 'app'