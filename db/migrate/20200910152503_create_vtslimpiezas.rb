class CreateVtslimpiezas < ActiveRecord::Migration[6.0]
  def change
    create_table :vtslimpiezas do |t|
      t.string :nombre
      t.datetime :fecha
      t.string :turno
      t.string :pesamatic
      t.string :camarin
      t.string :baño
      t.string :comedor
      t.string :botoneras
      t.string :baranda
      t.string :asiento
      t.string :mesa_computador
      t.string :mesa_comedor
      t.string :comentarios

      t.timestamps
    end
  end
end
