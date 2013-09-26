class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :places, :name
  end
end
