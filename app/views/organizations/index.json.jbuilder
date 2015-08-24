json.array!(@organizations) do |organization|
  json.extract! organization, :id, :organization_type_id, :parent_id, :code, :description, :active_datetime, :inactive_datetime, :level, :context_id, :context_code, :context_description
  json.url organization_url(organization, format: :json)
end
