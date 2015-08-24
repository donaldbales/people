json.array!(@position_types) do |position_type|
  json.extract! position_type, :id, :code, :description, :active_datetime, :inactive_datetime
  json.url position_type_url(position_type, format: :json)
end
