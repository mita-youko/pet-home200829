class CreateCatRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_records do |t|
      t.string :new_parent_name,         null: false
      t.string :phone_number,            null: false
      t.string :parent_name,             null: false
      t.boolean :checkbox,               null: false
      t.references :cat,                 null: false, foreign_key: true

      t.timestamps
    end
  end
end
