json.array!(@locations) do |location|
  json.extract! location, :id, :location_type_id, :parent_id, :code, :description, :active_datetime, :inactive_datetime, :level, :context_id, :context_code, :context_description
  json.url location_url(location, format: :json)
end
