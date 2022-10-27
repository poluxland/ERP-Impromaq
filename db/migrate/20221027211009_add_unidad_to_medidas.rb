class AddUnidadToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :s28c3op, :string
    add_column :medidas, :s28c3cemento, :string
    add_column :medidas, :s28c3nota, :string
    add_column :medidas, :s28c4op, :string
    add_column :medidas, :s28c4cemento, :string
    add_column :medidas, :s28c4nota, :string
    add_column :medidas, :s28c5op, :string
    add_column :medidas, :s28c5cemento, :string
    add_column :medidas, :s28c5nota, :string
    add_column :medidas, :s27c6op, :string
    add_column :medidas, :s27c7cemento, :string
    add_column :medidas, :s27c7nota, :string
    add_column :medidas, :s30c1op, :string
    add_column :medidas, :s30c1cemento, :string
    add_column :medidas, :s30c1nota, :string
    add_column :medidas, :s30c4op, :string
    add_column :medidas, :s30c4cemento, :string
    add_column :medidas, :s30c4nota, :string
    add_column :medidas, :s30c5op, :string
    add_column :medidas, :s30c5cemento, :string
    add_column :medidas, :s30c5nota, :string
  end
end
