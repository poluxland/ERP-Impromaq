json.extract! entrega, :id, :fecha, :nombre, :tipo, :responsable, :antiguedad, :observaciones, :created_at, :updated_at
json.url entrega_url(entrega, format: :json)
