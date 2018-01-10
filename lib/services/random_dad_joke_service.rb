require 'httparty'
require 'json'

class RandomDadJokeService
  include HTTParty
  headers 'Accept' => 'application/json'

  base_uri 'https://icanhazdadjoke.com/'

  def initialize
    get_random_dad_joke_data
  end

  def get_random_dad_joke_data
    @random_joke = JSON.parse(self.class.get("").body)
  end

  def get_data
    @random_joke
  end

  def get_id
    @random_joke['id']
  end

  def get_joke
    @random_joke['joke']
  end

  def get_status
    @random_joke['status']
  end

end
