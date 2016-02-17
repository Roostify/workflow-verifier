require 'octokit'

client = Octokit::Client.new(login: 'zspencer', password: ENV['GITHUB_TOKEN'])

client.list_statuses('roostify/roostify', 'feb8b33cd9aa6e8da4c106bf457414320d6a5f44').each do |status|
  p status
end

client.create_status('roostify/roostify', 'feb8b33cd9aa6e8da4c106bf457414320d6a5f44', 'success', context: "Can we haz status update?")
