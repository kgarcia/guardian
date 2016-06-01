class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :cedula
      t.string :nombre
      t.string :telefono
      t.string :correo

      t.timestamps null: false
    end
  end
end
