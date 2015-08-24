json.array!(@organization_types) do |organization_type|
  json.extract! organization_type, :id, :code, :description, :active_datetime, :inactive_datetime
  json.url organization_type_url(organization_type, format: :json)
end
