require('pg')
require_relative ("../db/sql_runner")
require_relative('film')
require_relative('customer')

class Ticket

  attr_accessor :film_id, :customer_id, :id

  def initialize(options)
    @id = options["id"].to_i
    @film_id = options['film_id'].to_i
    @customer_id = options['customer_id'].to_i
  end

  def save
    sql = "INSERT INTO tickets (film_id, customer_id) VALUES (#{@film_id}, #{@customer_id}) RETURNING *"
    ticket = SqlRunner.run(sql).first()
    @id = ticket["id"].to_i
  end

  def details
    sql = "SELECT customers.name FROM customers WHERE id = #{@customer_id}"
    funds = SqlRunner.run(sql).first().fetch("#{@id}").to_i
    return funds
  end

  def details1
    sql = "SELECT c.name, f.title FROM customers AS c INNER JOIN Films AS f ON f.film_id=c.id WHERE c.customer_id= tickets.id"
  end
  # SELECT z.predator, p.lifeSpan, z.prey 
  # FROM Zoo AS z 
  # INNER JOIN Plants AS p ON p.parent_id=z.id 
  # WHERE z.preyType=@carnivore

  def self.all
    sql = "SELECT * FROM tickets"
    ticket = SqlRunner.run(sql)
    return ticket.map {|all| Ticket.new(all)}
  end

  def self.delete_all
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end

end