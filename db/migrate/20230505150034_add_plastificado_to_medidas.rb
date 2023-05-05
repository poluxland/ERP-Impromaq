class AddPlastificadoToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :plastificado_especial, :integer
    add_column :medidas, :plastificado_especial_lados, :integer
    add_column :medidas, :plastificado_extra, :integer
    add_column :medidas, :plastificado_extra_zunchos, :integer
  end
end
