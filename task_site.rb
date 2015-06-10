require 'sinatra'
require 'sinatra/reloader'

class TaskSite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :home
  end

  # post "/" do
  #
  # end
end
