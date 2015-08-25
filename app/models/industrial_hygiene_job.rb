class IndustrialHygieneJob < ActiveRecord::Base
    belongs_to :industrial_hygiene_job_type
    has_many :person_industrial_hygiene_job
end
