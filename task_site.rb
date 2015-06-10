require 'sinatra'
require 'sinatra/reloader'

class TaskSite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do

    erb :home
  end

  post "/" do
    'redirect to ("/")'
    erb :home
  end

  get "/submit_task" do
    erb :submit_task
  end

end
