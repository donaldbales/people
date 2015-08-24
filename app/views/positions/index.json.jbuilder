json.array!(@positions) do |position|
  json.extract! position, :id, :position_type_id, :parent_id, :code, :description, :active_datetime, :inactive_datetime, :level, :context_id, :context_code, :context_description
  json.url position_url(position, format: :json)
end
