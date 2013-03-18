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
  

 def index
  @mycourses = Mycourse.where(:user_id=>current_user.id)
  render 'index'
 end

 def destroy
  @thecourse = Mycourse.find(params[:id])
  @identity = @thecourse.id
  @thecourse.destroy
  respond_to do |format|  
    format.js  
    end
 end


end
