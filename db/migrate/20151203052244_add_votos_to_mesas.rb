class AddVotosToMesas < ActiveRecord::Migration
  def change
    add_column :mesas, :lista, :integer, default: 0, null: false
    add_column :mesas, :teodoro, :integer, default: 0, null: false
    add_column :mesas, :marquina, :integer, default: 0, null: false
    add_column :mesas, :nulo, :integer, default: 0, null: false
    add_column :mesas, :votos, :integer, default: 0, null: false
  end
end
