class CreateServicios < ActiveRecord::Migration[6.1]
  def change
    create_table :servicios do |t|
      t.integer :cas
      t.integer :nfu
      t.integer :apoyo_cas
      t.integer :kkbc_a_p2
      t.integer :kka_a_ngp
      t.integer :kka_a_p1
      t.integer :yeso_a_silo
      t.integer :conchuela_a_bru
      t.integer :escombros
      t.integer :residuos
      t.integer :barrido_industrial
      t.string :retiro_derrames
      t.integer :aspirado
      t.integer :cementos
      t.integer :transportador
      t.integer :materia_prima
      t.integer :harneo_o_seleccion
      t.integer :recarga
      t.integer :molino
      t.integer :descarga
      t.integer :ton
      t.integer :lavado_cont
      t.integer :retiro_escombros
      t.string :cloracion
      t.integer :ol01
      t.integer :ol02
      t.integer :ol09
      t.integer :ol10
      t.integer :ex01
      t.integer :ok05
      t.integer :ok04
      t.integer :barr12
      t.integer :bbc20
      t.integer :h12
      t.integer :ca
      t.text :comentarios

      t.timestamps
    end
  end
end
