require 'rspec'
require_relative '../lib/dad_jokes'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
