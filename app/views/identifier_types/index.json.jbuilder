json.array!(@identifier_types) do |identifier_type|
  json.extract! identifier_type, :id, :code, :description, :active_datetime, :inactive_datetime
  json.url identifier_type_url(identifier_type, format: :json)
end
