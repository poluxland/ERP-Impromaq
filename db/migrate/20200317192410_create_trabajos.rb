class CreateTrabajos < ActiveRecord::Migration[5.1]
  def change
    create_table :trabajos do |t|
      t.string :planta
      t.string :ito
      t.string :descripcion
      t.integer :total
      t.string :fecha_termino
      t.integer :avance
      t.integer :op
      t.integer :factura
      t.string :observaciones
      t.string :i1
      t.string :i2
      t.string :i3
      t.string :i4
      t.string :i5
      t.string :i6
      t.string :i7
      t.string :i8
      t.string :i9
      t.string :i10
      t.string :i11
      t.string :i12
      t.integer :v1
      t.integer :v2
      t.integer :v3
      t.integer :v4
      t.integer :v5
      t.integer :v6
      t.integer :v7
      t.integer :v8
      t.integer :v9
      t.integer :v10
      t.integer :v11
      t.integer :v12
      t.string :centro_costo
      t.string :supervisor
      t.string :otros

      t.timestamps
    end
  end
end
