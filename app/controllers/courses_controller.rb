class CoursesController < ApplicationController

  before_filter :validate_login


  def index
    @courses = Course.all

    respond_to do |format|
      format.html {render 'index'}
      format.json { render json: @courses }
    end
  end

  def new
    @course = Course.new
    respond_to do |format|
      format.html {render 'new'}
      format.json { render json: @course }
    end
  end

  def create
    params[:course][:user_id] = current_user
    @course = Course.create(params[:course])
    if @course.save
      flash[:notice] = "Course was successfully added"
    end
    redirect_to new_course_path
  end
end
