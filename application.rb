require 'sinatra'

get '/' do
  random = rand(1..3)

  if (1..2).include?(random)
    body 'It works!'
    status 200
  else
    status 500
  end
end
