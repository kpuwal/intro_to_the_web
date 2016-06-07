require 'sinatra'

get '/random-cat' do
  @name= ["Alex", "Joe", "Matt"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end