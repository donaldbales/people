json.array!(@industrial_hygiene_jobs) do |industrial_hygiene_job|
  json.extract! industrial_hygiene_job, :id, :industrial_hygiene_job_type_id, :parent_id, :code, :description, :active_datetime, :inactive_datetime, :level, :context_id, :context_code, :context_description
  json.url industrial_hygiene_job_url(industrial_hygiene_job, format: :json)
end
