class CreatePlaceCategories < ActiveRecord::Migration
  def change
    create_table :place_categories do |t|
      t.integer :place_id
      t.integer :category_id

      t.timestamps
    end
    add_index :place_categories, :place_id
    add_index :place_categories, :category_id
    add_index :place_categories, [:place_id, :category_id], unique: true
  end
end
