require 'sinatra'

get '/cat' do
  @name= ["Alex", "Joe", "Matt"].sample
  erb(:index)
end
