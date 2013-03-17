class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
