get '/session/new' do
  erb :"session/new"
end

post '/session' do

  @user = User.authenticate(params[:username], params[:password])

  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = "Credentials were bad"
    erb :"session/new"
  end
end

