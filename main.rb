require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'haml'
require './model/blog.rb'

configure do
	enable :sessions
	set :session_secret, "thisismysecret"
end


db = Blog.new()

get '/' do 
	@post = db.posts().reverse()
	haml :index
end

get '/post/:id' do
	@post = db.post(params[:id])
	haml :blogpost
end	

get '/post' do
	if not session[:loggedin]
		redirect '/'
	end
	haml :blogform
end	

get '/login' do
	session[:loggedin] = true
	redirect '/'
end

post '/post' do
	if not session[:loggedin]
		redirect '/'
	end	
  id = db.new_post(params[:title],
   params[:body])	
  "Hello World"
  redirect "/post/#{id}"
end


