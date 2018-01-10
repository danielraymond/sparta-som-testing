require 'httparty'
require 'json'

class RandomDadJokeSlackService
  include HTTParty
  headers 'Accept' => 'application/json'

  base_uri 'https://icanhazdadjoke.com/slack'

  def initialize
    get_random_dad_joke_slack_data
  end

  def get_random_dad_joke_slack_data
    @random_joke_slack = JSON.parse(self.class.get("").body)
  end

  def get_data
    @random_joke_slack
  end

  def get_attachments_key
    @random_joke_slack['attachments']
  end

  def get_hash_inside_attachments
    @random_joke_slack['attachments'].first
  end

  def get_fallback
    get_hash_inside_attachments['fallback']
  end

  def get_footer
    get_hash_inside_attachments['footer']
  end

  def get_text
    get_hash_inside_attachments['text']
  end

  def get_response_type
    @random_joke_slack['response_type']
  end

  def get_username
    @random_joke_slack['username']
  end

end
