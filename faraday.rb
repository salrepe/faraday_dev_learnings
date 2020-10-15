require 'faraday'
require 'date'

10.times do
  retry_options = {
    max: 3,
    interval: 1,
    backoff_factor: 2,
    retry_statuses: [500],
    retry_block: -> (env, options, retries, exc) { puts 'retry: ' + retries.to_s }
  }

  conn = Faraday.new do |f|
    f.request :retry, retry_options
  end
  response = conn.get 'http://localhost:80'

  puts "==========================="
  puts response.status
  puts response.body
  puts "==========================="
  puts "\n"
end
