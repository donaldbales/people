class Organization < ActiveRecord::Base
    belongs_to :organization_type
    has_many :person_organization
end
