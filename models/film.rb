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

end
