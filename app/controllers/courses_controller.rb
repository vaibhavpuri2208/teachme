class CoursesController < ApplicationController

  def index
    @courses = Courses.all

    respond_to do |format|
      format.html {render 'index'}
      format.json { render json: @courses }
    end
  end

  def new
    @course = Courses.new
    respond_to do |format|
      format.html {render 'new'}
      format.json { render json: @course }
    end
  end



end
