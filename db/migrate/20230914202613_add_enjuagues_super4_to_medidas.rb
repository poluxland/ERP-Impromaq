class AddEnjuaguesSuper4ToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :enjuagues_super4, :integer
  end
end
