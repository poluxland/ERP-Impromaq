class CreateInterventions < ActiveRecord::Migration[6.0]
  def change
    create_table :interventions do |t|
      t.string :equipo
      t.datetime :desde
      t.datetime :hasta
      t.string :mecanico
      t.text :descripcion
      t.string :repuestos

      t.timestamps
    end
  end
end
