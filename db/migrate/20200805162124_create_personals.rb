class CreatePersonals < ActiveRecord::Migration[6.0]
  def change
    create_table :personals do |t|
      t.integer :rut
      t.integer :dv
      t.string :nombre
      t.date :contratado
      t.string :evaluacion
      t.string :comentarios

      t.timestamps
    end
  end
end
