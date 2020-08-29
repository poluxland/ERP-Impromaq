ActiveAdmin.register Trabajo do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :planta, :ito, :descripcion, :total, :fecha_termino, :avance, :op, :factura, :observaciones, :i1, :i2, :i3, :i4, :i5, :i6, :i7, :i8, :i9, :i10, :i11, :i12, :v1, :v2, :v3, :v4, :v5, :v6, :v7, :v8, :v9, :v10, :v11, :v12, :centro_costo, :supervisor, :otros, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12
  #
  # or
  #
  # permit_params do
  #   permitted = [:planta, :ito, :descripcion, :total, :fecha_termino, :avance, :op, :factura, :observaciones, :i1, :i2, :i3, :i4, :i5, :i6, :i7, :i8, :i9, :i10, :i11, :i12, :v1, :v2, :v3, :v4, :v5, :v6, :v7, :v8, :v9, :v10, :v11, :v12, :centro_costo, :supervisor, :otros, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
