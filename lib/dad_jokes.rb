require_relative 'services/random_dad_joke_service'
require_relative 'services/random_dad_joke_slack_service'

class DadJokes

  def random_dad_joke
    RandomDadJokeService.new
  end

  def random_dad_joke_slack
    RandomDadJokeSlackService.new
  end

end
