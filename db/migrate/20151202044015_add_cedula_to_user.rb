class AddCedulaToUser < ActiveRecord::Migration
  def change
      add_index :users, :cedula,                unique: true
  end
end
