
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    article = Article.create

    erb :new
  end

  post '/articles' do
    erb :show
  end

  get '/articles' do
    @articles = Article.all

    erb :index
  end

end
