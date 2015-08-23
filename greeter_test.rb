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

  it "/ diplsys hello world by default" do
    @request.get("/").body.must_include "Hello World!"
  end

  it "/ displayes the name passed into the cookie" do
    @request.get("/", "HTTP _COOKIE" => "greet=hil").body.must_include "Hello hil!"
  end
  it "/change sets cookie and redirects to root" do
    response = @request.post("/change", params: {"name"=>"Ruby"})
  end
end
