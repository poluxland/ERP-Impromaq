class AddHornoToSoplado < ActiveRecord::Migration[6.1]
  def change
    add_column :soplados, :horno, :float
  end
end
