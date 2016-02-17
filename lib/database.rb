require 'sequel'
begin
  require 'dotenv'
  Dotenv.load
rescue StandardError => e
  puts e
end

DB = Sequel.connect(ENV['DATABASE_URL'])
