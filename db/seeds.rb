require('pg')
require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

artist1 = Artist.new ({
  'name' => 'Red Hot Chili Peppers'
  })

artist1.save

artist2 = Artist.new ({
  'name' => 'Arctic Monkeys'
  })

artist2.save

album1 = Album.new ({
  'title' => 'Blood Sugar Sex Magick',
  'genre' => 'Funk',
  'quantity' => 50,
  'artist_id' => artist1.id
  })

album1.save

binding.pry
nil