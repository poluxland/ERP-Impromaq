json.extract! requerimiento, :id, :nombre, :planta, :solicitud, :observaciones, :respuesta, :otros, :monto, :created_at, :updated_at
json.url requerimiento_url(requerimiento, format: :json)
