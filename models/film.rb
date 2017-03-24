require('pg')
require_relative ("../db/sql_runner")
require_relative('ticket')

class Film

  attr_reader :title, :price, :id

  def initialize(options)
    @title = options["title"]
    @price = options["price"].to_i
    @id = options["id"].to_i
  end

  def save
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING *"
    film = SqlRunner.run(sql).first
    @id = film["id"].to_i
  end

  def self.delete_all
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

end
