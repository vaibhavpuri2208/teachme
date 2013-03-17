class SessionsController < ApplicationController


  def create
    #method to create a User session
    name = params[:name]
    password = params[:password]

    result_object = User.find_by_name(name).try(:authenticate,password)
    

    if !result_object
      flash[:notice] = "Incorrect User Name or Password"
      redirect_to :login
    else
      session[:user_id] = result_object.id
      redirect_to courses_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :home
  end


end
