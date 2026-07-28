class AddUltraBigbagToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :ultra_bigbag, :integer, default: 0, null: false
  end
end
