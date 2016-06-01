class CreateParroquia < ActiveRecord::Migration
  def change
    create_table :parroquia do |t|
      t.string :nombre
      t.references :municipio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
