json.array!(@gender_types) do |gender_type|
  json.extract! gender_type, :id, :code, :description, :active_datetime, :inactive_datetime
  json.url gender_type_url(gender_type, format: :json)
end
