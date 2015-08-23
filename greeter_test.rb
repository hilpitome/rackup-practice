require "rubygems"
require "rack"
require "minitest/autorun"
require File.expand_path("..lib/greeter", __FILE__)

describe Greeter do
  before do
    @request = Rack::MockRequest.new(Greeter)
  end
end
