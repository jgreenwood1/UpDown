class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.text :name
      t.text :value

      t.timestamps null: false
    end
  end
end
