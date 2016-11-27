require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/artist_controller')
require_relative('controllers/album_controller')
require_relative('models/artist')
require_relative('models/album')

get '/' do
 erb(:index)
end

get '/inventory' do
  @albums = Album.all
  erb(:inventory)
end

get '/artists' do
  @artists = Artist.all
  erb(:artists)
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:artist)
end

get '/artists/new' do
  erb(:new)
end

post '/artists' do
  artist = Artist.new(params)
  artist.save
  redirect to ('/artists')
end

get '/albums' do
  @albums = Album.all
  erb(:albums)
end

get '/albums/:id' do
  @album  = Album.find(params[:id])
  erb(:album)
end

get '/albums/new' do
  erb(:new)
end

post '/albums' do
  album = Albums.new(params)
  album.save
  redirect to ('/albums')
end