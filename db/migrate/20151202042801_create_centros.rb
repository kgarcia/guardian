class CreateCentros < ActiveRecord::Migration
  def change
    create_table :centros do |t|
      t.string :codigo
      t.string :nombre
      t.references :parroquia, index: true, foreign_key: true
      t.integer :electores
      t.integer :mesas
      t.integer :testigos

      t.timestamps null: false
    end
    add_index :centros, :codigo
  end
end
