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
  payload = params[:payload]

  logger.info payload.inspect
  logger.info payload[:ref]

  payload.inspect
end
