# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

# Prevent cors issues in React frontend
require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*'
    resource(
        '*',
        :headers => :any,
        :methods => [:get, :post, :delete, :put, :options]
    )
  end
end
