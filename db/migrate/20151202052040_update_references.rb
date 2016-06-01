class UpdateReferences < ActiveRecord::Migration
  def change
    
      change_column :parroquia, :municipio_id, :integer
      change_column :centros, :parroquia_id, :integer
      change_column :mesas, :centro_id, :integer
      change_column :mesas, :user_id, :integer
      
  end
end
