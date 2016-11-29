require('pg')
require_relative('../models/album')
require_relative('../models/artist')
require('pry-byebug')

artist1 = Artist.new ({
  'name' => 'Red Hot Chili Peppers',
  'artist_url' => 'redhotchilipeppers.jpg'
  })
artist1.save

artist2 = Artist.new ({
  'name' => 'Arctic Monkeys',
  'artist_url' => "arcticmonkeys.jpeg"
  })
artist2.save

artist3 = Artist.new({
  'name' => 'Chance the Rapper'
  })
artist3.save

artist4 = Artist.new({
  'name' => 'Kendrick Lamar'
  })
artist4.save

artist5 = Artist.new({
  'name' => 'Justin Bieber'
  })
artist5.save

artist6 = Artist.new({
  'name' => 'One Direction'
  })
artist6.save

artist7 = Artist.new({
  'name' => 'Pantera'
  })
artist7.save

artist8 = Artist.new({
  'name' => 'Metallica'
  })
artist8.save

artist9 = Artist.new({
  'name' => 'Bob Marley'
  })
artist9.save

artist10 = Artist.new({
  'name' => 'Cliff Richard'
  })
artist10.save

 #--------------------
 #--------------------

album1 = Album.new ({
  'title' => "Blood Sugar Sex Magic",
  'genre' => 'Funk',
  'quantity' => 50,
  'artist_id' => artist1.id
  })
album1.save

album2 = Album.new ({
  'title' => "Californication",
  'genre' => 'Funk',
  'quantity' => 0,
  'artist_id' => artist1.id
  })
album2.save

album3 = Album.new ({
  'title' => "Whatever people say I am thats what Im not",
  'genre' => "Indie",
  'quantity' => 25,
  'artist_id' => artist2.id
  })
album3.save

album4 = Album.new ({
  'title' => "A.M.",
  'genre' => "Indie",
  'quantity' => 2,
  'artist_id' => artist4.id
  })
album4.save

album5 = Album.new ({
  'title' => "Acid Rap",
  'genre' => "Rap",
  'quantity' => 20,
  'artist_id' => artist3.id
  })
album5.save

album6 = Album.new ({
  'title' => "Coloring Book",
  'genre' => "Rap",
  'quantity' => 50,
  'artist_id' => artist3.id
  })
album6.save

album7 = Album.new ({
  'title' => "To Pimp a Butterfly",
  'genre' => "Rap",
  'quantity' => 70,
  'artist_id' => artist4.id
  })
album7.save

album8 = Album.new ({
  'title' => "Good Kid, Maad City",
  'genre' => "Rap",
  'quantity' => 9,
  'artist_id' => artist4.id
  })
album8.save


album9 = Album.new ({
  'title' => "Beebz",
  'genre' => "Pop",
  'quantity' => 15,
  'artist_id' => artist5.id
  })
album9.save

album9 = Album.new ({
  'title' => "1d",
  'genre' => "Pop",
  'quantity' => 20,
  'artist_id' => artist6.id
  })
album9.save

album10 = Album.new ({
  'title' => "Cowboys from Hell",
  'genre' => "Metal",
  'quantity' => 10,
  'artist_id' => artist7.id
  })
album10.save

album11 = Album.new ({
  'title' => "Ride the Lighting",
  'genre' => "Metal",
  'quantity' => 50,
  'artist_id' => artist8.id
  })
album11.save

album12 = Album.new ({
  'title' => "Master of Puppets",
  'genre' => "Metal",
  'quantity' => 1,
  'artist_id' => artist8.id
  })
album12.save

album13 = Album.new ({
  'title' => "Exodus",
  'genre' => "Reggae",
  'quantity' => 18,
  'artist_id' => artist9.id
  })
album13.save

album14 = Album.new ({
  'title' => "Cliff",
  'genre' => "Golden Oldies",
  'quantity' => 50,
  'artist_id' => artist10.id
  })
album14.save

binding.pry
nil