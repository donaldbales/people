class Position < ActiveRecord::Base
    belongs_to :position_type
    has_many :person_position
end
