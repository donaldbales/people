class Person < ActiveRecord::Base
    belongs_to :gender_type
    belongs_to :person_type
    has_many :person_identifier
    has_many :person_industrial_hygiene_job
    has_many :person_location
    has_many :person_organization
    has_many :person_position
    
    def gender_types
        return GenderType.where(['(now() between active_datetime and inactive_datetime) or id = :id', {id: self.id}]).order('code')
    end

    def person_types
        return PersonType.where(['(now() between active_datetime and inactive_datetime) or id = :id', {id: self.id}]).order('code')
    end
end
