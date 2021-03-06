get '/superheros' do
  @superheros = Superhero.order("updated_at DESC")
  erb :"superheros/index"
end

get '/superheros/new' do
  @superhero = Superhero.new
  erb :"superheros/new"
end

get '/superheros/:id' do
  @superhero = Superhero.find_by(id: params[:id])
  erb :"superheros/show"
end

get '/superheros/:id/edit' do
  @superhero = Superhero.find_by(id: params[:id])
  erb :"superheros/edit"
end

post '/superheros' do
  @superhero = Superhero.new(params[:superhero])

  if @superhero.save
    redirect '/superheros'
  else
    erb :"superheros/new"
  end
end

put '/superheros/:id' do
  @superhero = Superhero.find_by(id: params[:id])

  if @superhero.update_attributes(params[:superhero])
    redirect '/superheros'
  else
    erb :"superheros/edit"
  end
end

delete '/superheros/:id' do
  Superhero.destroy(params[:id])
  redirect '/superheros'
end