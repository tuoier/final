Final::Application.routes.draw do

  get "/" => "routes/list"

  #add new route
  get "/add" => 'routes#add'
  post "/routes" => 'routes#create'

  #delete existing route
  delete "/routes/:id" => 'routes#destory'

  #edit existing route
  get "/routes/edit/:id" => "routes#edit"
  patch "/routes/:id" => 'routes#update'

end