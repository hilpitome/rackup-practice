require "greeter"

use Rack::Reloader, 0
use Rack::Auth::Basic do |username, pasword|
  password == "secret"

run Rack::Cascade.new([Rack::File.new("public"), Greeter])
