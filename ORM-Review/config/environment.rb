require 'sqlite3'
require 'pry'

DB = { :conn => SQLite3::Database.new('db/cats.db') }

require_relative '../lib/cat'