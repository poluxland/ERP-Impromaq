class CreateCodigoStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :codigo_statuses do |t|
      t.references :codigo, null: false, foreign_key: true
      t.integer :ruidio
      t.integer :fuga
      t.integer :estructura
      t.integer :housekeep
      t.integer :vibracion
      t.integer :temp
      t.string :estado
      t.date :fecha

      t.timestamps
    end
  end
end
