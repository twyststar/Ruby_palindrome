require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/form') do
  @word = params.fetch('words').palindrome?()
end
