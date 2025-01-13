class AddTurnoToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :turno, :string
  end
end
