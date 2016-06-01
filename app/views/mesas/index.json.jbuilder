json.array!(@mesas) do |mesa|
  json.extract! mesa, :id, :numero, :centro_id, :user_id
  json.url mesa_url(mesa, format: :json)
end
