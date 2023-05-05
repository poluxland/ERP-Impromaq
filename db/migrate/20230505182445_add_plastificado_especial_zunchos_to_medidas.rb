class AddPlastificadoEspecialZunchosToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :plastificado_especial_zunchos, :integer
  end
end
