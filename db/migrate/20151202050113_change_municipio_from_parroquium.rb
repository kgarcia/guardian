class ChangeMunicipioFromParroquium < ActiveRecord::Migration
  def change
      change_column :parroquia, :municipio_id, :string
      change_column :centros, :parroquia_id, :string
      change_column :mesas, :centro_id, :string
      change_column :mesas, :user_id, :string
  end
end
