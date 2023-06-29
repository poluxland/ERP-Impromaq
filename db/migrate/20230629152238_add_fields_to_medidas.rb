class AddFieldsToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :especial_sacos, :integer
    add_column :medidas, :especial_bigbag, :integer
    add_column :medidas, :especial_granel, :integer
    add_column :medidas, :extra_sacos, :integer
    add_column :medidas, :extra_bigbag, :integer
    add_column :medidas, :extra_granel, :integer
    add_column :medidas, :super_3300_granel, :integer
    add_column :medidas, :super_4200_granel, :integer
  end
end
