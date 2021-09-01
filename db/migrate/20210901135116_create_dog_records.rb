class CreateDogRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_records do |t|

      t.timestamps
    end
  end
end
