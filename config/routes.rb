Final::Application.routes.draw do

  get "/" => "routes/list"

  #debug user
  get "/show_all_users" => "users/list"

  #view city
  get "/cities/:id" => 'cities#show'

  #login/logout
  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  #add new route
  get "/add" => 'routes#add'
  post "/routes" => 'routes#create'

  #delete existing route
  delete "/routes/:id" => 'routes#destory'

  #edit existing route
  get "/routes/edit/:id" => "routes#edit"
  patch "/routes/:id" => 'routes#update'

  #add new user
  get "/adduser" => 'users#add'
  post "/users" => 'users#create'

end