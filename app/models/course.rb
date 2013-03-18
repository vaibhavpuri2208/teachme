class Course < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :user_id


validates :name, :user_id, :description, :category_id, :presence=>true
has_many :mycourses
belongs_to :category
belongs_to :user


  def self.not_selected_courses(user)
    @courses_selected = Mycourse.where(user_id:user.id)
    @all_courses = Course.all
    @not_selected_courses = Array.new
    if @courses_selected.empty?
      dont_iterate
    else
      iterate
    end  
  end

private

  def self.iterate
     @all_courses.each do |course|
      if !(course_id_array).include? course.id
        @not_selected_courses << course
      end
    end 
  @not_selected_courses
  end

  def self.dont_iterate
    @not_selected_courses= @all_courses
  end

  def self.course_id_array
    new_array = Array.new
    @courses_selected.each do |x| 
      new_array<<x.course_id
    end
    new_array
  end


end
