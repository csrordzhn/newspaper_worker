require_relative 'bundle/bundler/setup'
require 'httparty'

worker_date = DateTime.now

#server_url = "http://localhost:9292/api/v1/fetch_newspaper"            #development
server_url = "http://handheldnews.herokuapp.com/api/v1/fetch_newspaper" #production

response = HTTParty.post(server_url)
response.code == 200 ? output = "#{worker_date}: Saved!" : output = "#{worker_date}: Not saved."

puts output
