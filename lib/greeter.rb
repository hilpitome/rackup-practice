rewquire "erb"

class Greeter

  def call(env)
  Rack::Response.new(render("index.html.erb"))
  end

  def render(template)

    path = File.expand_path("../views/#{template}"_FILE_)
    ERB.new(File.read(path)).result(binding)
  end

 end
