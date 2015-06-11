require_relative 'database'

module TaskList
  class ModifyDatabase < Database

  def your_custom_query_here(*args)
    # santitize/validate your arguments

    # prepare your statement

    # call `query!` to interact with the database

    # determine what should be returned
  end

  def self.add_to_db(params)
    statement = "INSERT INTO posts (name, description, completed_date) VALUES (?, ?, ?)"
    Database.new("./db/taskList.db").query!(statement, params)

  end










  end
end
