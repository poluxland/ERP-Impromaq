class CreateMantencions < ActiveRecord::Migration[6.0]
  def change
    create_table :mantencions do |t|
      t.string :equipo
      t.datetime :desde
      t.datetime :hasta
      t.string :mecanico
      t.text :descripcion
      t.string :repuestos
      t.references :truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
