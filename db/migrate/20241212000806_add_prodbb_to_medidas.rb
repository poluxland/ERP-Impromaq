class AddProdbbToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :prodbb, :integer
  end
end
