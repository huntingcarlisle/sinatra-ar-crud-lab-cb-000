
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end
  
  get '/posts/new' do
    erb :new
  end
  
  get '/posts' do
    Post.new(params[:post])
    @posts = Post.all  
  end
  
  
  post '/posts' do
    erb :index
  end
  
end
