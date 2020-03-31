json.extract! gasto, :id, :fecha, :rend, :tipo, :num, :descripcion, :valor, :iva, :neto, :cc, :resp, :familia, :tipo, :cot, :aprobado, :estado, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)
