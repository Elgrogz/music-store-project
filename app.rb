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
  @artists = Artist.all
  erb(:inventory)
end

post '/inventory' do
  @album = Album.update(params)
  redirect to ('/inventory')
end

get '/artists' do
  @artists = Artist.all
  erb(:"artist/artists")
end

get '/artists/new' do
  erb(:"artist/new")
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:"artist/artist")
end

post '/artists/:id/delete' do
  Artist.destroy(params[:id])
  redirect to ('/artists')
end
  
post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  redirect to ('/inventory')
end

get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:"artist/edit")
end

post '/artists/:id' do
  Artist.update(params)
  redirect to ('/artists')
end

get '/albums' do
  @albums = Album.all
  erb(:"album/albums")
end

get '/albums/new' do
  @artists = Artist.all
  erb(:"album/new")
end

get '/albums/:id' do
  @album  = Album.find(params[:id])
  erb(:"album/album")
end

get '/albums/:id/delete' do
  @album  = Album.find(params[:id])
  erb(:delete)
end

post '/albums/:id/delete' do
  Album.destroy(params[:id])
  redirect to ('/albums')
end

post '/albums' do
  @album = Album.new(params)
  @album.save
  redirect to ('/inventory')
end

get '/albums/:id/edit' do
  @artists = Artist.all
  @album = Album.find(params[:id])
  erb(:"album/edit")
end

post '/albums/:id' do
  Album.update(params)
  redirect to ('/albums')
end