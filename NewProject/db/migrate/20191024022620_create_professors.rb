class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :class
      t.string :string
      t.string :office

      t.timestamps
    end
  end
end
