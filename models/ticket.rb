require('pg')
require_relative ("../db/sql_runner")
require_relative('film')
require_relative('customer')

class Ticket

  attr_reader :film_id, :customer_id, :id

  def initialize(options)
    @id = options["id"].to_i
    @film_id = options['film_id'].to_i
    @customer_id = options['customer_id'].to_i
  end

end
