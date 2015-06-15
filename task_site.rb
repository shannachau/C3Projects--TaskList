require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/modify_db'
require_relative 'lib/database'
require 'sqlite3'

class TaskSite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    our_database = TaskList::ModifyDatabase.new("./db/taskList.db")
    @current_task_display = our_database.display_db

    erb :home
  end

  post "/" do
    erb :home
  end

  get "/submit_task" do
    erb :submit_task
  end

  post "/submit_task" do
    @name = params[:name]
    @description = params[:description]
    @completed_date = params[:completed_date]
    our_database = TaskList::ModifyDatabase.new("./db/taskList.db")

    @tasks = our_database.add_to_db(@name, @description, @completed_date)
    @current_task_display = our_database.display_db
    redirect "/"

    erb :submit_task
  end

end
