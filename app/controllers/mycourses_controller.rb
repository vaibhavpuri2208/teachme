class MycoursesController < ApplicationController

  def create
    @mycourse = Mycourse.create(user_id: params[:user_id], course_id: params[:course_id]) 
    @thecourse = params[:course_id]
    respond_to do |format|  
      if !@mycourse.save    
        flash[:notice] ="Oops, something went wrong!"
      end 
    format.js  
    end
  end
  




end
