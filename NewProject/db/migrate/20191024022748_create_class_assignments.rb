class CreateClassAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :class_assignments do |t|
      t.string :course
      t.string :room_number
      t.references :Professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
