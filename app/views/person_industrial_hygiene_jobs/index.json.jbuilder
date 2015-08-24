json.array!(@person_industrial_hygiene_jobs) do |person_industrial_hygiene_job|
  json.extract! person_industrial_hygiene_job, :id, :person_id, :industrial_hygiene_job_id, :active_datetime, :inactive_datetime
  json.url person_industrial_hygiene_job_url(person_industrial_hygiene_job, format: :json)
end
