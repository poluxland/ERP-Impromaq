class CreateChecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :checklists do |t|
      t.string :nombre
      t.string :equipo
      t.string :operativo
      t.string :horometro
      t.boolean :c1
      t.boolean :c2
      t.boolean :c3
      t.boolean :c4
      t.boolean :c5
      t.boolean :c6
      t.boolean :c7
      t.boolean :c8
      t.boolean :c9
      t.boolean :c10
      t.boolean :c11
      t.boolean :c12
      t.boolean :c13
      t.boolean :c14
      t.boolean :c15
      t.boolean :c16
      t.boolean :c17
      t.boolean :c18
      t.boolean :c19
      t.integer :combustible
      t.integer :acmotor
      t.integer :achidraulico
      t.integer :actrans
      t.integer :acatf
      t.integer :acnuto

      t.timestamps
    end
  end
end
