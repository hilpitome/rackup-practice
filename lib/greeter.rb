require "erb"

class Greeter

  def call(env)
    request = Rack::Request.new(env)
  Rack::Response.new(render("index.html.erb"))
  end

  def render(template)

    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end

 end
