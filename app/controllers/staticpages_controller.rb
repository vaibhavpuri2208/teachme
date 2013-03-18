class StaticpagesController < ApplicationController


  def home
    if current_user
      redirect_to courses_url 
    end


  end

  def login

  end

  def index 

  end

end