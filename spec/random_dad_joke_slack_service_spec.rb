require 'spec_helper'

describe RandomDadJokeSlackService do

  before(:all) do
    @random_dad_joke_slack = DadJokes.new.random_dad_joke_slack
  end

  it "print data" do
    puts @random_dad_joke_slack.get_data
  end

  it "should respond with a hash" do
    expect(@random_dad_joke_slack.get_data).to be_kind_of(Hash)
  end

  it "the hash it responds with should have 5 keys" do
    expect(@random_dad_joke_slack.get_data.length).to eq(3)
  end

  it "attachments key should return an array" do
    expect(@random_dad_joke_slack.get_attachments_key).to be_kind_of(Array)
  end

  it "first element of an attachments array should be a hash" do
    expect(@random_dad_joke_slack.get_hash_inside_attachments).to be_kind_of(Hash)
  end

  it "attachments hash should have 3 elements" do
    expect(@random_dad_joke_slack.get_hash_inside_attachments.length).to eq(3)
  end

  it "fallback key should have a value that is a string" do
    expect(@random_dad_joke_slack.get_fallback).to be_kind_of(String)
  end

  it "footer key should have a value that is a string" do
    expect(@random_dad_joke_slack.get_footer).to be_kind_of(String)
  end

  it "text key should have a value that is a string" do
    expect(@random_dad_joke_slack.get_text).to be_kind_of(String)
  end

  it "response type key should be a string" do
    expect(@random_dad_joke_slack.get_response_type).to be_kind_of(String)
  end

  it "username key should be a string" do
    expect(@random_dad_joke_slack.get_username).to be_kind_of(String)
  end

end
