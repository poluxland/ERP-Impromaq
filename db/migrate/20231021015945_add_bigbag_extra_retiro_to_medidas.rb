class AddBigbagExtraRetiroToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :bigbag_extra_retiro, :integer
  end
end
