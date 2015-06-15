require_relative 'database'

module TaskList
  class ModifyDatabase < Database
  attr_reader :database_name

  def initialize(database_name)
    @database_name = database_name
  end

  def add_to_db(name, description, completed_date)
    statement = "INSERT INTO posts (name, description, completed_date) VALUES ('#{name}', '#{description}', '#{completed_date}');"

    query!(statement)
  end

  def display_db
    statement = "SELECT * FROM posts;"
    query!(statement)
  end

  def delete_entry(id)
    statement = "DELETE FROM posts WHERE id = #{id};"
    query!(statement)
  end

  def display_entry(id)
    statement = "SELECT name,description,completed_date FROM posts WHERE id = #{id};"
    query!(statement)
  end


  end
end
