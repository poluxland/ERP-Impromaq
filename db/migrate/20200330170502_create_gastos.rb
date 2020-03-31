class CreateGastos < ActiveRecord::Migration[5.2]
  def change
    create_table :gastos do |t|
      t.date :fecha
      t.integer :rend
      t.string :tipo
      t.integer :num
      t.string :descripcion
      t.integer :valor
      t.integer :iva
      t.integer :neto
      t.string :cc
      t.string :resp
      t.string :familia
      t.string :tipo
      t.integer :cot
      t.string :aprobado
      t.string :estado

      t.timestamps
    end
  end
end
