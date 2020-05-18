class CreateEntregas < ActiveRecord::Migration[6.0]
  def change
    create_table :entregas do |t|
      t.date :fecha
      t.string :nombre
      t.string :tipo
      t.string :responsable
      t.integer :antiguedad
      t.string :observaciones

      t.timestamps
    end
  end
end
