get '/quotes' do
  @quotes = Quote.order("created_at DESC")
  erb :"quotes/index"
end