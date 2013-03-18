class ApplicationController < ActionController::Base
  protect_from_forgery


  def current_user
    if session[:user_id]  
      user = User.find(session[:user_id])
    else
      nil
    end
  end

  def validate_login
    if !session[:user_id]
      flash[:notice] = "Login to access this site"
      redirect_to login_url
      
    end
  end

end
