class RoutesController < ApplicationController

  def create
    Route.create("airline_id" => params["airline_id"],
                 "code" => params["code"],
                 "depart_city_id" => params["depart"],
                 "arrival_city_id" => params["arrival"])

    redirect_to "/"
  end

  def destory
  	route = Route.find_by(:id => params["id"])
  	route.delete
  	redirect_to "/"
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
