class CreateSoplados < ActiveRecord::Migration[6.1]
  def change
    create_table :soplados do |t|
      t.string :supervisor
      t.datetime :fecha
      t.float :presion1
      t.float :presion2
      t.float :presion3
      t.string :observaciones

      t.timestamps
    end
  end
end
