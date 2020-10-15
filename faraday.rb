require 'faraday'

response = Faraday.get 'http://localhost:80'


puts "==========================="
puts response.status
puts response.body
puts "==========================="
