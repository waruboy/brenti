class CreateHaltes < ActiveRecord::Migration
  def change
    create_table :haltes do |t|
      t.string :kode
      t.string :nama
      t.integer :transfer_id
      t.integer :koridor_id

      t.timestamps
    end

    add_index :haltes, :nama
    add_index :haltes, :koridor_id
  end
end
