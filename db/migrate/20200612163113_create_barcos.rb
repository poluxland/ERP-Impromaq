class CreateBarcos < ActiveRecord::Migration[6.0]
  def change
    create_table :barcos do |t|
      t.string :nombre
      t.string :nave
      t.boolean :barandas
      t.boolean :colectores
      t.boolean :vtolva1
      t.boolean :vtolva2
      t.boolean :al1
      t.boolean :al2
      t.boolean :compresorm
      t.boolean :cabezalm
      t.boolean :cabezald
      t.boolean :polines
      t.boolean :redaire
      t.boolean :motoresbc03
      t.boolean :techotolva
      t.boolean :greating
      t.boolean :alumbrado
      t.boolean :caseta
      t.boolean :ccmmuelle
      t.boolean :c18
      t.boolean :c19
      t.integer :numero
      t.text :observaciones
      t.string :empresa
      t.string :varios

      t.timestamps
    end
  end
end
