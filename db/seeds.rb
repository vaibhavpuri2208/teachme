# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = [{name:'Introduction to Ruby on Rails', description:"Learn how to build your first web application using Ruby on Rails. This seven week course teaches the basic fundamental of the MVC architecture, introduction to ruby and other essential tools such as testing & debugging", user_id:1,category_id:1},
  {name:'Building your first mobile app', description:'In this course create your first mobile app using HTML5 ', user_id:1,category_id:1}]

categories =[{name:'Web Development'},{name:'Front-end'}]


courses.each do |course|
  Courses.create(course)
end

categories.each do |category|
  Category.create(category)
end