class PersonIndustrialHygieneJob < ActiveRecord::Base
    belongs_to :person
    belongs_to :industrial_hygiene_job
end
