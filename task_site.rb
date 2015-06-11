require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/modify_db'
require_relative 'lib/database'
require 'sqlite3'

class TaskSite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :home
  end

  post "/" do
    @name = params[:name]
    @description = params[:description]
    @completed_date = params[:completed_date]
    TaskList::ModifyDatabase.add_to_db(params.values)
    'redirect to ("/")'
    erb :home
  end

  get "/submit_task" do
    erb :submit_task
  end

end
