require_relative('../db/sql_runner')

class Album

  attr_accessor :title, :genre, :quantity
  attr_reader :id, :artist_id

  def initialize(options)
    @id = nil || options['id'].to_i
    @title = options['title'] 
    @genre = options['genre'] 
    @quantity = options['quantity'].to_i 
    @artist_id = options['artist_id'].to_i 
  end
end