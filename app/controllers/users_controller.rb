class UsersController < ApplicationController

  def create
    User.create("username" => params["username"],
                 "password" => params["password"],
                 "email" => params["email"])
    redirect_to "/login"
  end

  def update
  	route = Route.find_by(:id => params["id"])
  	route.update("airline_id" => params["airline_id"],
                 "code" => params["code"],
                 "depart_city_id" => params["depart"],
                 "arrival_city_id" => params["arrival"])

    redirect_to "/"
  end

end
