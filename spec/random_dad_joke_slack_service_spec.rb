require 'spec_helper'

describe RandomDadJokeSlackService do

  before(:all) do
    @random_dad_joke_slack = DadJokes.new.random_dad_joke_slack
  end

  it "should respond with a hash" do
    expect(@random_dad_joke_slack.get_data).to be_kind_of(Hash)
  end

  it "should have 5 keys the hash" do
    expect(@random_dad_joke_slack.get_data.length).to eq(3)
  end

  it "should return an array when selecting attachments key" do
    expect(@random_dad_joke_slack.get_attachments_key).to be_kind_of(Array)
  end

  it "attachments array first element should be a hash" do
    expect(@random_dad_joke_slack.get_hash_inside_attachments).to be_kind_of(Hash)
  end

  it "should have 3 keys in attachments hash" do
    expect(@random_dad_joke_slack.get_hash_inside_attachments.length).to eq(3)
  end

  it "should have a fallback thats is a string" do
    expect(@random_dad_joke_slack.get_fallback).to be_kind_of(String)
  end

  it "should have a footer that is a string" do
    expect(@random_dad_joke_slack.get_footer).to be_kind_of(String)
  end

  it "should have a text key that is a string" do
    expect(@random_dad_joke_slack.get_text).to be_kind_of(String)
  end

  it "should have a type key that is a string" do
    expect(@random_dad_joke_slack.get_response_type).to be_kind_of(String)
  end

  it "should have a username that is a string" do
    expect(@random_dad_joke_slack.get_username).to be_kind_of(String)
  end

end
