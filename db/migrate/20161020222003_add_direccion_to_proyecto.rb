class AddDireccionToProyecto < ActiveRecord::Migration
  def change
    add_column :proyecto, :proyecto_direccion, :string
  end
end
