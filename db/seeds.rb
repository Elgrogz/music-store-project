require('pg')
require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

artist1 = Artist.new ({
  'name' => 'Red Hot Chili Peppers'
  })

artist1.save

binding.pry
nil