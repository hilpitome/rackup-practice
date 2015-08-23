require "rubygems"
require "rack"
require "minitest/autorun"
require File.expand_path("..lib/greeter", __FILE__)

describe Greeter do
  before do
    @request = Rack::MockRequest.new(Greeter)
  it "returns 404 response for unknown requests" do
    @request.get("/unknown").status.must_equal 404
  end

end
