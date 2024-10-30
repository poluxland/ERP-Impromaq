class CreateCodigos < ActiveRecord::Migration[6.1]
  def change
    create_table :codigos do |t|
      t.string :tag
      t.string :area
      t.string :descripcion

      t.timestamps
    end
  end
end
