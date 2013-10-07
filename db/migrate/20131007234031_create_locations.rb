class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :place_id
      t.integer :halte_id
      t.string :remark

      t.timestamps
    end
    add_index :locations, :place_id
    add_index :locations, :halte_id
    add_index :locations, [:place_id, :halte_id], unique: true
  end
end
