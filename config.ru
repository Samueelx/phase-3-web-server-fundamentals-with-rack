require 'rack'
require 'pry'

class App
    def call(env)
        path = env["PATH_INFO"]

        if path == "/"
            [200, {"Content-Type"=> "text/html"}, ["<h2>Hello <em>World</em>!</h2>"]]
        elsif path == "/potato"
            [200, {"Content-Type" => "text/html"}, ["<h3>Boil 'em, mash 'em, stick 'em in a stew</h3>"]]
        else [404, {"Content-Type" => "text/html"}, ["<h2>Page not found!</h2"]]
        end
    end
end

run App.new