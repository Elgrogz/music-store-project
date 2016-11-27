require_relative('../db/sql_runner')

class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @id = nil || options['id'].to_i
    @name = options['name']
    # @artist_url = nil || options['artist_url']
  end

  def save
    sql = "INSERT INTO artists 
          (name) 
          VALUES ('#{@name}')
          RETURNING *;"
    results = SqlRunner.run(sql)
    @id = results[0]['id'].to_i
  end

  def delete
    sql = "DELETE FROM artists WHERE id = #{@id};"
    result = SqlRunner.run(sql)
  end

  def self.update
    sql = "UPDATE artists 
          SET name = '#{options['name']}'
          WHERE id = '#{options['id']};"
    result = SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM artists WHERE id = #{id};"
    artist = SqlRunner.run(sql)
    result = Artist.new(artist.first)
    return result
  end

  def self.all
    sql = "SELECT * FROM artists;"
    results = SqlRunner.run(sql)
    return results.map {|artist| Artist.new(artist)}
  end

  def self.delete_all
    sql = "DELETE FROM artists;"
    result SqlRunner.run(sql)
  end

  def albums
    sql = "SELECT * FROM albums WHERE artist_id = #{@id};"
    results = SqlRunner.run(sql)
    return results.map {|album| Album.new(album)}
  end

end