require_relative('../db/sql_runner')

class Album

  attr_accessor :title, :genre, :quantity, :album_url, :buy_price, :sell_price
  attr_reader :id, :artist_id

  def initialize(options)
    @id = nil || options['id'].to_i
    @title = options['title'] 
    @genre = nil || options['genre'] 
    @quantity = nil || options['quantity'].to_i 
    @artist_id = options['artist_id'].to_i 
    @album_url = nil || options['album_url']
    @buy_price = 3 || options['buy_price'].to_i
    @sell_price = 10 || options['sell_price'].to_i
  end

  def save
    sql = "INSERT INTO albums 
          (title, genre, quantity, artist_id, album_url, buy_price, sell_price) 
          VALUES ('#{@title}', '#{@genre}', #{@quantity}, #{@artist_id}, '#{@album_url}', #{@buy_price}, #{@sell_price})
          RETURNING *;"
    results = SqlRunner.run(sql)
    @id = results[0]['id'].to_i
  end

  def self.update(options)
    sql = "UPDATE albums 
          SET title = '#{options['title']}',
          genre = '#{options['genre']}',
          quantity = '#{options['quantity']}',
          artist_id = '#{options['artist_id']}',
          album_url = '#{options['album_url']}',
          buy_price = '#{options[buy_price]}',
          sell_price = '#{options[sell_price]}'
          WHERE id = '#{options['id']}';"
    result = SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{id};"
    album = SqlRunner.run(sql)
    result = Album.new(album.first)
    return result
  end

  def self.destroy(id)
    sql = "DELETE FROM albums WHERE id = #{id};"
    result = SqlRunner.run(sql)
  end

  def self.all
    sql = "SELECT * FROM albums;"
    results = SqlRunner.run(sql)
    return results.map {|album| Album.new(album)}
  end

  def self.delete_all
    sql = "DELETE FROM albums;"
    results = SqlRunner.run(sql)
  end

  def get_name
    sql = "SELECT * FROM artists WHERE id = #{@artist_id}"
    result = SqlRunner.run(sql)
    return result[0]['name']
  end

  def check_quantity
    if @quantity <= 0 || @quantity == nil
      @quantity = 0
      return "out_of_stock"
    elsif @quantity > 0 && @quantity <= 10 
      return "low"
    elsif @quantity > 10 && @quantity < 20
      return "medium"
    else
      return "high"
    end
  end

  def new_stock(number)
    @quantity += number
    sql = "UPDATE albums
          SET quantity = #{@quantity}
          WHERE id = #{@id};"
    result = SqlRunner.run(sql)
  end

  def remove_stock(number)
    @quantity -= number
    sql = "UPDATE albums
          SET quantity = #{@quantity}
          WHERE id = #{@id};"
    result = SqlRunner.run(sql)
  end

  def markup
    return @sell_price - @buy_price
  end

end