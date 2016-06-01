json.array!(@users) do |user|
  json.extract! user, :id, :cedula, :nombre, :telefono, :correo
  json.url user_url(user, format: :json)
end
