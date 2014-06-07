class SessionsController < ApplicationController

  def logout
    cookies["user_id"] = nil
    cookies["message_error"] = nil
    cookies["message_main"] = "Sorry, you haven't login yet!"
    redirect_to "/"
  end

  def authenticate
    current_user = User.find_by("username" => params["username"])
    if current_user != nil
      if current_user["password"] == params["password"]
        cookies["user_id"] = current_user["id"]
        cookies["message_main"] = "Greaaaaaaaaaaaaaaaat"
        cookies["message_error"] = nil
        redirect_to "/"
      else
        cookies["message_error"] = "Wrong password!"
        redirect_to "/login"
      end
    else
      cookies["message_error"] = "There is no such username!"
      redirect_to "/login"
    end
  end

end
