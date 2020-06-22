class CreateMedidas < ActiveRecord::Migration[6.0]
  def change
    create_table :medidas do |t|
      t.integer :silo19a
      t.integer :silo19b
      t.integer :silo20a
      t.integer :silo20b
      t.integer :silo21a
      t.integer :silo21b
      t.integer :silo22a
      t.integer :silo22b
      t.integer :silo27
      t.integer :silo28
      t.integer :especialsacos
      t.integer :extrsacos
      t.integer :bigbagextra
      t.integer :bigbagextra1350
      t.integer :bigbagextra1
      t.integer :bigbagespecial
      t.integer :bigbagsuper
      t.integer :prodhaver
      t.integer :prodvento
      t.string :tolvacalle5
      t.string :silos3000tolva1
      t.string :silos3000tolva4
      t.string :silos3000tolva5
      t.string :silosbigbag1
      t.string :silosbigbag2
      t.string :silosvento1
      t.string :silovento2
      t.string :silovento3
      t.integer :callesilo28
      t.integer :callesplanta1
      t.integer :callesilo27
      t.string :observaciones
      t.integer :otros

      t.timestamps
    end
  end
end
