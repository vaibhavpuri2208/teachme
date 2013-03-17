class Course < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :user_id


validates :name, :user_id, :description, :category_id, :presence=>true

end
