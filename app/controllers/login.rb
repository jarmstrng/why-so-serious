get '/login' do
  erb :'login/login'
end

post '/login' do
  joker = Joker.authenticate(params[:joker])
  session[:joker_id] = joker.id
  redirect '/'
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/singup' do
  erb :'login/signup'
end

post '/singup' do
  joker = Joker.create(params[:joker])
  session[:joker_id] = joker.id
  redirect '/'
end