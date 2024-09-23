class AddSacosSolubleToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :especial_sacos_soluble, :integer
    add_column :medidas, :extra_sacos_soluble, :integer
  end
end
