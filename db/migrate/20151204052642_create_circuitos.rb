class CreateCircuitos < ActiveRecord::Migration
  def change
    create_table :circuitos do |t|
      t.string :nombre

      t.timestamps null: false
    end
    
  end
end
