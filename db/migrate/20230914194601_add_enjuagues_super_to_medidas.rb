class AddEnjuaguesSuperToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :enjuagues_super, :integer
  end
end
