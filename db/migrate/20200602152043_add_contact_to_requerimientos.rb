class AddContactToRequerimientos < ActiveRecord::Migration[6.0]
  def change
    add_column :requerimientos, :contact, :string
  end
end
