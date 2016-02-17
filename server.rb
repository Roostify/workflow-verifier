require_relative 'lib/configure'
require_relative 'lib/github_event_processor'
require 'sinatra'
require 'json'

post "/github_events" do
  type = request.env['HTTP_X_GITHUB_EVENT']
  body = JSON.parse(request.env['rack.input'].read) if type == "pull_request"
  puts params
end
