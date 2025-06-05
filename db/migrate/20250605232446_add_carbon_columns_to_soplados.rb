class AddCarbonColumnsToSoplados < ActiveRecord::Migration[6.1]
  def change
    add_column :soplados, :carbon_horno, :float
    add_column :soplados, :carbon_precalcinador, :float
  end
end
