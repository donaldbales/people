class Location < ActiveRecord::Base
    belongs_to :location_type
    has_many :person_location
end
