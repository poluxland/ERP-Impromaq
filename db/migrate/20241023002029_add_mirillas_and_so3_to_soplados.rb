class AddMirillasAndSo3ToSoplados < ActiveRecord::Migration[6.1]
  def change
    add_column :soplados, :mirillas, :string
    add_column :soplados, :so3, :float
  end
end
