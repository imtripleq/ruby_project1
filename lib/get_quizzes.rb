require 'net/http'
require 'open-uri'
require 'json'

class GetQuizzes
  URL = "https://quizapi.io/api/v1/questions?apiKey=5CA1oa5PUeKg1Kv5uGSKPOO7ZbN7RGFXYojcUdF3"

  def self.get_programs
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end
