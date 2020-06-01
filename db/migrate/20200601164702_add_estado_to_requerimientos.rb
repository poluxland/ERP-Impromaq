class AddEstadoToRequerimientos < ActiveRecord::Migration[6.0]
  def change
    add_column :requerimientos, :estado, :string
  end
end
