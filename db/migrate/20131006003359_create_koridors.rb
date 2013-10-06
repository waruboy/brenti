class CreateKoridors < ActiveRecord::Migration
  def change
    create_table :koridors do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :koridors, :name
  end


end
