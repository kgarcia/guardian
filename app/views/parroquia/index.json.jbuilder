json.array!(@parroquia) do |parroquium|
  json.extract! parroquium, :id, :nombre, :municipio_id
  json.url parroquium_url(parroquium, format: :json)
end
