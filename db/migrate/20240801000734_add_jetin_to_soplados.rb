class AddJetinToSoplados < ActiveRecord::Migration[6.1]
  def change
    add_column :soplados, :jetin, :boolean
  end
end
