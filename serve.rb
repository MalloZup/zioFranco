#! /usr/bin/ruby

require 'sinatra'
require_relative 'db/database.rb'

get '/' do
  "Hello, World!"
end

get '/review' do
  # get the latest 20 posts
  @posts = Post.all(order: [ :id.desc ], limit: 20)
  erb :review
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
