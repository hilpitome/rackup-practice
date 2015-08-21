require "greeter"

use Rack: :Reloader

run Greeter.new
