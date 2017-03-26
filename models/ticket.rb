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