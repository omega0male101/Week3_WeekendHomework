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

  def customers()
   sql = "SELECT customers.* FROM customers INNER JOIN tickets ON tickets.customer_id = customers.id WHERE tickets.film_id = #{@id}"
    customers_array = SqlRunner.run(sql)
    return customers_array.map { |customer| Customer.new(customer)}
  end

  def save
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING *"
    film = SqlRunner.run(sql).first
    @id = film["id"].to_i
  end

  def self.all
    sql = "SELECT * FROM films"
    films = SqlRunner.run(sql)
    return films.map {|film| Film.new(film)}
  end

  def self.delete_all
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

end
