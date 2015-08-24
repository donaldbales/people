json.array!(@identifiers) do |identifier|
  json.extract! identifier, :id, :identifier_type_id, :value, :active_datetime, :inactive_datetime
  json.url identifier_url(identifier, format: :json)
end
