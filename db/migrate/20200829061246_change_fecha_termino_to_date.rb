class ChangeFechaTerminoToDate < ActiveRecord::Migration[6.0]
  def up
    execute "UPDATE trabajos SET fecha_termino = translate(fecha_termino, 'Abr,Ago', 'Apr,Aug')"
    change_column :trabajos, :fecha_termino, "date USING TO_DATE(fecha_termino, 'Mon-YY')"
  end

  def down 
    change_column :trabajos, :fecha_termino, :string
  end
end