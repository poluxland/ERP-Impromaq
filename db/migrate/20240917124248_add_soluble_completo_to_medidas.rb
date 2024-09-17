class AddSolubleCompletoToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :plastificado_especial_soluble_completo, :integer
    add_column :medidas, :plastificado_extra_soluble_completo, :integer
  end
end
