class AddColumnsToGasto < ActiveRecord::Migration[6.0]
  def change
    add_column :gastos, :tipo_documento, :string
    add_column :gastos, :folio, :integer
    add_column :gastos, :emisor, :string
    add_column :gastos, :razon_social_emisor, :string
    add_column :gastos, :emision, :string
    add_column :gastos, :monto_neto, :integer
    add_column :gastos, :monto_exento, :integer
    add_column :gastos, :monto_iva, :integer
    add_column :gastos, :monto_total, :integer
    add_column :gastos, :impuestos, :integer
    add_column :gastos, :fecha_vencimiento, :string
  end
end
