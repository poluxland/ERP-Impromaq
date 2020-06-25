class AddColumnsToMedidas < ActiveRecord::Migration[6.0]
  def change
    add_column :medidas, :ns28, :integer
    add_column :medidas, :nbb1, :integer
    add_column :medidas, :nbb2, :integer
    add_column :medidas, :nvento1, :integer
    add_column :medidas, :nvento2, :integer
    add_column :medidas, :nvento3, :integer
    add_column :medidas, :ns30001, :integer
    add_column :medidas, :ns30002, :integer
    add_column :medidas, :ns30003, :integer
    add_column :medidas, :nivel9, :integer
  end
end
