class CreateRequerimientos < ActiveRecord::Migration[6.0]
  def change
    create_table :requerimientos do |t|
      t.string :nombre
      t.string :planta
      t.string :solicitud
      t.text :observaciones
      t.text :respuesta
      t.string :otros
      t.integer :monto

      t.timestamps
    end
  end
end
