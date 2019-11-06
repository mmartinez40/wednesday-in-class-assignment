class ChangeClassToCourses < ActiveRecord::Migration[6.0]
  def change
    rename_column :professors, :class, :course
  end
end
