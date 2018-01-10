require 'spec_helper'

describe RandomDadJokeService do

  before(:all) do
    @random_dad_joke = DadJokes.new.random_dad_joke
  end

  it "should respond with a hash" do
    expect(@random_dad_joke.get_data).to be_kind_of(Hash)
  end

  it "the hash should have three keys" do
    expect(@random_dad_joke.get_data.length).to eq(3)
  end

  it "should have an id that is a string" do
    expect(@random_dad_joke.get_id).to be_kind_of(String)
  end

  it "should have a joke that is a string" do
    expect(@random_dad_joke.get_joke).to be_kind_of(String)
  end

  it "should have a status code of 200" do
    expect(@random_dad_joke.get_status).to eq(200)
  end

end
