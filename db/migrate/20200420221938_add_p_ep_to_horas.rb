class AddPEpToHoras < ActiveRecord::Migration[5.2]
  def change
    add_column :horas, :ep, :string
  end
end
