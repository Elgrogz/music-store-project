require_relative('../db/sql_runner')

class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @id = nil || options['id'].to_i
    @name = options['name'] 
  end

  def save
    sql = "INSERT INTO artists 
          (name) 
          VALUES ('#{@name}')
          RETURNING *;"
    results = SqlRunner.run(sql)
    @id = results[0]['id'].to_i
  end
end