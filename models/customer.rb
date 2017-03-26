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
