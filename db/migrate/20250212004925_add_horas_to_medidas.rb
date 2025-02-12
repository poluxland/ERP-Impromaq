class AddHorasToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :horas_haver, :float
    add_column :medidas, :horas_vento, :float
    add_column :medidas, :horas_bigbag, :float
  end
end
