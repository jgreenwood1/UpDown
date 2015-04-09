class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.text :name
      t.integer :value

      t.timestamps null: false
    end
  end
end
