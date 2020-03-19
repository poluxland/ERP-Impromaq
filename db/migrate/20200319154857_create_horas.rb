class CreateHoras < ActiveRecord::Migration[5.1]
  def change
    create_table :horas do |t|
      t.date :fecha
      t.string :descripcion
      t.string :area
      t.string :personal
      t.time :inicio
      t.time :termino
      t.float :he
      t.integer :ot
      t.string :traslado
      t.string :lugar
      t.string :mandante
      t.string :estado

      t.timestamps
    end
  end
end
