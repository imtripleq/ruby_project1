require_relative '../lib/get_quizzes'
require_relative '../lib/username'

DB = { conn: SQLite3::Database.new('db/username.db') }
APIKEY = '5CA1oa5PUeKg1Kv5uGSKPOO7ZbN7RGFXYojcUdF3'
