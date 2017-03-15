#! /usr/bin/ruby

require 'sinatra'


get '/' do
  "Hello, World!"
end

get '/about' do
  'A little about me.'
end

get '/bug/:number' do
  params[:number]
end

get '/results/:day/:build' do
  params[:number]
end

get '/more/*' do
  params[:splat]
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end
