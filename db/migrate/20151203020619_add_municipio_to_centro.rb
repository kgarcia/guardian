class AddMunicipioToCentro < ActiveRecord::Migration
  def change
    add_reference :centros, :municipio, index: true, foreign_key: true
  end
end
