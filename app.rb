require "pry" if ENV["RACK_ENV"] == "development"
require "sinatra"

post "/" do
  push = JSON.parse(params[:payload])
  "I got some JSON: #{push.inspect}"
end
