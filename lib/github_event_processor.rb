require 'sidekiq'

class GithubEventProcessor
  include Sidekiq::Worker
  def perform(headers, event)
    puts event
    puts headers
  end
end
