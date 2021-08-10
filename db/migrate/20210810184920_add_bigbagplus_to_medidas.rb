class AddBigbagplusToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :bigbagplus, :integer
  end
end
