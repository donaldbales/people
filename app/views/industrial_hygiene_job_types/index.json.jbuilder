json.array!(@industrial_hygiene_job_types) do |industrial_hygiene_job_type|
  json.extract! industrial_hygiene_job_type, :id, :code, :description, :active_datetime, :inactive_datetime
  json.url industrial_hygiene_job_type_url(industrial_hygiene_job_type, format: :json)
end
