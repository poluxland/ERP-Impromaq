class AddTelefonoToRequerimientos < ActiveRecord::Migration[6.0]
  def change
    add_column :requerimientos, :phone, :string
  end
end
