class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :room_number
      t.string :building
      t.references :Professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
