class Courses < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :user_id
end
