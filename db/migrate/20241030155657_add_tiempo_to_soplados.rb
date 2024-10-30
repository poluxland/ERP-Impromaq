class AddTiempoToSoplados < ActiveRecord::Migration[6.1]
  def change
    add_column :soplados, :tiempo, :integer
  end
end
