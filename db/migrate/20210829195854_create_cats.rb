class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name,             null: false
      t.integer :m_or_f_id,       null: false
      t.integer :year_id,         null: false
      t.integer :cat_breed_id,    null: false
      t.date :date,               null: false
      t.text :description,        null: false
      t.references :user,         null: false, foreign_key: true

      t.timestamps
    end
  end
end
