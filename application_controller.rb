require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/twine' do
    erb :index
  end
  
  post '/chefLogin' do
    erb:chef
  end  
  
  post '/twinerLogin' do
    erb:newtwiner
  end  

  post '/diner_login' do
    un=params[:username] #gets username from params hash. username lives in index.erb
    choice=params[:choice] #gets pass from params hash. pass lives in index.erb
    @name=un #assigns new variable called name the value "un" (name is now global-ish)
    @capname=capitalize(@name) #runs "capitalize" method on un 
    if choice=="chef"
      erb :chef
    else
      erb :newtwiner  
    end
  end  

  get '/contact' do 
    erb :contact
  end
  
  get '/chef' do 
    erb :chef
  end

  get '/about' do 
    erb :about
  end

  get '/newtwiner' do
    erb :newtwiner
  end
end
