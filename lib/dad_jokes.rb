require_relative 'services/random_dad_joke_service'

class DadJokes

  def random_dad_joke
    RandomDadJokeService.new
  end

end
