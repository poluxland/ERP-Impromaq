ActiveAdmin.register Gasto do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :fecha, :rend, :tipo, :num, :descripcion, :valor, :iva, :neto, :cc, :resp, :familia, :cot, :aprobado, :estado, :tipo_documento, :folio, :emisor, :razon_social_emisor, :emision, :monto_neto, :monto_exento, :monto_iva, :monto_total, :impuestos, :fecha_vencimiento
  #
  # or
  #
  # permit_params do
  #   permitted = [:fecha, :rend, :tipo, :num, :descripcion, :valor, :iva, :neto, :cc, :resp, :familia, :cot, :aprobado, :estado, :tipo_documento, :folio, :emisor, :razon_social_emisor, :emision, :monto_neto, :monto_exento, :monto_iva, :monto_total, :impuestos, :fecha_vencimiento]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
