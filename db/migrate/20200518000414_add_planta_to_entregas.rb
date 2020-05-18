class AddPlantaToEntregas < ActiveRecord::Migration[6.0]
  def change
    add_column :entregas, :planta, :string
  end
end
