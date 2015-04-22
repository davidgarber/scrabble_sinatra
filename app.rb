require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_sinatra')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word') do
  @word = params.fetch('word').scrabble_sinatra()
  erb(:word)
end
