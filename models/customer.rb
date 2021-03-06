require('pg')
require_relative ("../db/sql_runner")
require_relative('ticket')

class Customer

  attr_reader :name, :funds, :id

  def initialize(options)
    @name = options["name"]
    @funds = options["funds"].to_i
    @id = options["id"].to_i
  end

  def films()
   sql = "SELECT films.* FROM films INNER JOIN tickets ON tickets.customer_id = films.id WHERE tickets.film_id = #{@id}"
    films_array = SqlRunner.run(sql)
    return films_array.map { |film| Film.new(film)}
  end

  def update
    sql = "UPDATE customers SET (name, funds) = ('#{@name}', '#{@funds}) WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def funds
    sql = "SELECT customers.funds FROM customers WHERE id = #{@id}"
    funds = SqlRunner.run(sql).first().fetch("funds").to_i
    return funds
  end

  def save
    sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{@funds}) RETURNING *"
    customer = SqlRunner.run(sql).first
    @id = customer["id"].to_i
  end

  def self.all
    sql = "SELECT * FROM customers c"
    customers = SqlRunner.run(sql)
    return customers.map{|customer| Customer.new(customer)}
  end

  def self.delete_all
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

end
