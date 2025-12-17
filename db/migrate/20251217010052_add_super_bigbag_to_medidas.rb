class AddSuperBigbagToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :super_bigbag, :integer, default: 0, null: false
  end
end
