require "octokit"
require "json"

# Each Action has an event passed to it.
event = JSON.parse(File.read(ENV['GITHUB_EVENT_PATH'])
puts event.inspect

# Use GITHUB_TOKEN to interact with the GitHub API
client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])

current_repo = Octokit::Repository.from_url(event["issue"]["pull_request"]["html_url"])

# Let's grab all the issues for the current repo
issues = client.issues(current_repo)

puts issues.inspect
