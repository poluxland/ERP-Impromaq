class AddOperadoresToSoplados < ActiveRecord::Migration[6.1]
  def change
    add_column :soplados, :operadores, :integer
  end
end
