require_relative('/db/sql_runner')

class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @id = nil || options['id'].to_i
    @name = options['name'] 
  end
end