class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.integer :especial_sacos
      t.integer :extra_sacos
      t.integer :especial_soluble
      t.integer :extra_soluble
      t.integer :bb_especial
      t.integer :bb_extra
      t.integer :prod_esp_sacos
      t.integer :prod_extra_sacos
      t.integer :prod_extra_soluble
      t.integer :prod_esp_bb
      t.integer :prod_extra_bb
      t.integer :envases_esp
      t.integer :envases_ext
      t.integer :envases_bb
      t.integer :pallets_buenos
      t.integer :muestra_pallets
      t.integer :humedad_promedio
      t.integer :bobinas
      t.text :observaciones

      t.timestamps
    end
  end
end
