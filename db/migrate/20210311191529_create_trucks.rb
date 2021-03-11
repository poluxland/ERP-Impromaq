class CreateTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :trucks do |t|
      t.string :codigo
      t.string :marca
      t.string :modelo
      t.string :planta
      t.integer :año
      t.text :otros

      t.timestamps
    end
  end
end
