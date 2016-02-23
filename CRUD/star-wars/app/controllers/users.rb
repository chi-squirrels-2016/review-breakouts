get '/users/new' do
  @user = User.new
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect '/'
  else
    erb :"users/new"
  end
end

get '/users/:id/edit' do
  if authenticated?
    if current_user.id == params[:id]
      @user = current_user
      erb :"users/edit"
    else
      redirect '/quotes?message=unathorized'
    end
  else
    redirect '/session/new'
  end
end

put '/users/:id' do
  if authenticated?
    if current_user.id == params[:id]
      @user = current_user
      if user.update_attributes(params[:user])
        redirect "/users/#{@user.id}"
      else
        erb :"users/edit"
      end
    else
      redirect '/quotes?message=unathorized'
    end
  else
    redirect '/session/new'
  end

end