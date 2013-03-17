class ApplicationController < ActionController::Base
  protect_from_forgery


  def current_user
    user = User.find(session[:user_id])
  end

  def validate_login
    if !session[:user_id]
      flash[:notice] = "Login to access this site"
      redirect_to login_url
      
    end
  end

end
