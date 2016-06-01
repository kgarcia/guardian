json.array!(@centros) do |centro|
  json.extract! centro, :id, :codigo, :nombre, :parroquia_id, :electores, :mesas, :testigos
  json.url centro_url(centro, format: :json)
end
