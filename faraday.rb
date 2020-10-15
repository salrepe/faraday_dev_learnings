require 'faraday'

10.times do
  response = Faraday.get 'http://localhost:80'

  puts "==========================="
  puts response.status
  puts response.body
  puts "==========================="
end
