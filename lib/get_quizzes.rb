require 'net/http'
require 'open-uri'
require 'json'

class GetQuizzes
  URL = "https://quizapi.io/api/v1/questions?apiKey=#{APIKEY}"

  def self.get_programs
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
end
