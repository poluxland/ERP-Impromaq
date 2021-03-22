class CreateOvertimes < ActiveRecord::Migration[6.0]
  def change
    create_table :overtimes do |t|
      t.datetime :inicio
      t.datetime :termino
      t.references :personal, null: false, foreign_key: true
      t.integer :cantidad
      t.text :motivo

      t.timestamps
    end
  end
end
