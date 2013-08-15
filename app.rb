require "json"
require "pry" if ENV["RACK_ENV"] == "development"
require "sinatra"

use Rack::Logger

helpers do
  def logger
    request.logger
  end
end

post "/" do
  logger.info params.inspect
  params.inspect
end
