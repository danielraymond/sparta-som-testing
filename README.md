# Service Object Model and API Testing

This repo is an example of a service object model used to call multiple services from the random dad joke open API found at the following link: https://icanhazdadjoke.com/

Individual services can be called leading to reusable code that has only the methods you require and not useless methods for another service if it is not required.

HTTParty is used to make the request to the API and JSON is used to parse the data into an object that can be accessed in ruby.

Tests for each of the services were run using RSpec to show that the data returned is in correct format.

### How to set-up the programme

To install all of the required gems for this programme run the following in your terminal (MacOS):

```
bundle install
```
This will install all the gems in the gem file which includes HTTParty, JSON and RSpec.

In order to run the tests enter the following command in the root directory:

```
rspec
```
### How to create a test using the RSpec testing tool
To use RSpec in your own repo run the command:
```
rspec --init
```

Below is an example of a test with a before hook to call the data from the RandomDadJokeService class and test that the response is a hash.

```ruby
require 'spec_helper'

describe RandomDadJokeService do

  before(:all) do
    @random_dad_joke = DadJokes.new.random_dad_joke
  end

  it "should respond with a hash" do
    expect(@random_dad_joke.get_data).to be_kind_of(Hash)
  end

end
```

### Documentation

JSON - https://github.com/flori/json

RSpec - http://www.rubydoc.info/gems/rspec-core/RSpec

HTTParty - https://github.com/jnunemaker/httparty
