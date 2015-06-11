require_relative 'database'

module TaskList
  class ModifyDatabase < Database
  attr_reader :database_name

  def initialize(database_name)
    @database_name = database_name
  end

  # def your_custom_query_here(*args)
  #   # santitize/validate your arguments
  #
  #   # prepare your statement
  #
  #   # call `query!` to interact with the database
  #
  #   # determine what should be returned
  # end

  def add_to_db(name, description, completed_date)
    statement = "INSERT INTO posts (name, description, completed_date) VALUES ('#{name}', '#{description}', '#{completed_date}');"

    query!(statement)

  end

  def display_db
    statement = "SELECT FROM * posts;"
    query!(statement)
  end










  end
end
