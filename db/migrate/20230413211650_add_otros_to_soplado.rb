class AddOtrosToSoplado < ActiveRecord::Migration[6.1]
  def change
    add_column :soplados, :presion4, :float
    add_column :soplados, :presion5, :float
    add_column :soplados, :presion6, :float
  end
end
