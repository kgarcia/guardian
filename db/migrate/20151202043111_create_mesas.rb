class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.string :numero
      t.references :centro, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
