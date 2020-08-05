class CreatePermisos < ActiveRecord::Migration[6.0]
  def change
    create_table :permisos do |t|
      t.date :desde
      t.date :hasta
      t.integer :cantidad
      t.integer :periodo
      t.string :otros
      t.references :personal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
